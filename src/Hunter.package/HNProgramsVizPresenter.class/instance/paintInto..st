hooks
paintInto: b
	| lb es |

	"nodes"
	b shape circle size: #linesOfCode.

	b interaction popupText: #filepathInProject.

	es := b nodes: self project programs.
	
	es @ (HNRTProgramsStyler new project: project).
	es @ (HNStyleHighlightable new style: #(#hoverNode #hoverEdges)).

	"Unselect when clicking on the background"
	b view when: TRMouseClick do: [ :event | 
		selectedEntity := nil.
		selectedFolder := nil.
		self refresher refreshIfRequested ].
	
	"edges"
	b shape
		shape: (RTArrowedLine new head: (RTFilledNarrowArrow asHead size: 4; width: 1); width: 1);
		withShorterDistanceAttachPoint.
	b edges moveBehind; connectToAll: #resolvedDependencies.

	"layout"
	(b layout hnCustom: HNOptimizedForceBasedLayout new)
		charge: [:x | x width * -15 ];
		length: [:e | e from width + e to width ];
		strength: 1.0.
	b layout
		ifNotConnectedThen: RTGridLayout new.

	"nodes' size"
	b normalizer normalizeSize: #linesOfCode min: 5 max: 30 using: [:nb | nb sqrt ].

	"view settings"
	b view @ RTZoomableView.

	"legend"
	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: b view.
	lb addText: 'Each node represents a JS file.'.
	lb addText: 'And the arrows, the dependencies between them.'.
	lb addText: 'Radio is proportional to lines of code.'.
	lb addText: 'The color depends on the folder the file is.'.
	"lb addColorFadingFrom: Color gray to: Color red text: '# of nodes that depend on me'."
	lb build.