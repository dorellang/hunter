hooks
paintInto: b
	| lb es map |
	
	map := HNFolderColorMap new
		registerProject: project;
		yourself.

	"nodes"
	b shape circle size: #linesOfCode.

	b interaction popupText: #filepathInProject.

	es := b nodes: self project programs.
	
	es @ (HNRTElementStyler new
		defaultStyle: [ :e |
			e trachelShape color: (map colorAt: e model folder);
				strokePaint: Color black;
				strokeWidth: 0.5.
			e connectedEdges do: [ :anEdge | anEdge trachelShape color: Color lightGray ]
		];
		addStyle: #selected with: [ :e |
			e trachelShape strokePaint: UIManager default theme selectionColor darker darker;
				strokeWidth: 10.0.
			e incomingEdges do: [ :anEdge | anEdge trachelShape color: Color blue ].
			e outgoingEdges do: [ :anEdge | anEdge trachelShape color: Color red ]
		];
		addStyle: #searchResult with: [ :e |
			e trachelShape strokePaint: Color green;
				strokeWidth: 5.0
		];
		addStyle: #hover with: [ :e |
			e trachelShape color: e color darker darker darker.
			e incomingEdges do: [ :anEdge | anEdge trachelShape color: Color blue ].
			e outgoingEdges do: [ :anEdge | anEdge trachelShape color: Color red ]
		]).

	es @ (HNStyleHighlightable new style: #hover).
	
	es do: [:anElement |
		anElement addInteraction: (HNHighlightable new
			focusOnIncomingAndOutgoingElements;
			edgeColor: [ :edge | 
				(edge from == anElement) 
					ifTrue: [ Color blue ] 
					ifFalse: [ Color red ] ];
			yourself).
		].

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
	lb addColorFadingFrom: Color gray to: Color red text: '# of nodes that depend on me'.
	lb build.
