hooks
paintInto: b
	| es |

	"nodes"
	b shape circle size: #linesOfCode.
	b interaction popup
		backgroundColor: HNColorTheme popupBackgroundColor;
		text: #filepathInProject.

	es := b nodes: project programs.
	es @ (HNRTProgramsStyler new project: project).
	es @ (HNStyleHighlightable new style: #(#hoverNode #hoverEdges)).

	"Unselect when clicking on the background"
	b view when: TRMouseClick do: [ :event | 
		selectedEntity := nil.
		selectedFolder := nil.
		self refresher refreshIfRequested ].
	
	"external programs"
	b shape rectangle size: #sourceFileSize.
	b interaction popupText: [:each | '{1}
({2})' format: {each packageName.  each shortDescription} ].
	es := b nodes: project externalPrograms.
	es do: [:each | each trachelShape dashes: #(2) ].
	es @ (HNRTProgramsStyler new project: project).
	es @ (HNStyleHighlightable new style: #(#hoverNode #hoverEdges)).

	"unknown programs"	
	b shape circle size: #sourceFileSize.
	b interaction popupText: [:each | '{1}
({2})' format: {each filepathInProject.  each shortDescription} ].
	es := b nodes: project unknownPrograms.
	es do: [:each | each trachelShape dashes: #(2) ].
	es @ (HNRTProgramsStyler new project: project).
	es @ (HNStyleHighlightable new style: #(#hoverNode #hoverEdges)).

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
	HNLegendBuilder new
		view: b view;
		onDemand: 'Help';
		addText: 'Circles represent JS files:
      - their size is proportional the lines of code;
      - their color identify the container folder;
      - when border is dashed, the file either was not found or had parsing errors.';
		addText: 'Arrows show the dependencies between nodes (require/import).';
		addText: 'Boxes represent external files/modules.';
		build.