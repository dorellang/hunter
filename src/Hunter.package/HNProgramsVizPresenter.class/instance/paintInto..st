hooks
paintInto: b
	| lb |
	
	"nodes"
	b shape circle size: #linesOfCode; borderColor: Color black.
	b interaction 
		popupText: #filepathInProject; 
		highlightNeighbors: #resolvedDependencies color: Color blue;
		addInteraction: (HNHighlightable new
			edgeColor: Color blue;
			yourself).
	b nodes: self project programs.

	"edges"
	b shape
		shape: (RTArrowedLine new head: (RTFilledNarrowArrow asHead size: 4; width: 1); width: 1);
		color: Color lightGray;
		withShorterDistanceAttachPoint.
	b edges moveBehind; connectToAll: #resolvedDependencies.


	"layout"
	(b layout hnCustom: HNOptimizedForceBasedLayout new)
		charge: [:x | x width * -15 ];
		length: [:e | e from width + e to width ];
		strength: 1.0.
	b layout
		ifNotConnectedThen: RTGridLayout new.

	"nodes' size and color"
	b normalizer 
		normalizeSize: #linesOfCode min: 5 max: 30 using: [:nb | nb sqrt ];
		normalizeColor: [:p | p resolvedDependencies size sqrt ];
		alphaColor: 0.5.
	"b shape
		if: [ :program | program  name includesSubstring: searchText caseSensitive: false ]
		fillColor: Color green."

	"view settings"
	b view @ RTZoomableView.

	self flag: #todo. "Restore search"
"	b view @ elementHighligter."

	"legend"
	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: b view.
	lb addText: 'Each node represents a JS file.'.
	lb addText: 'And the arrows, the dependencies between them.'.
	lb addText: 'Radio is proportional to lines of code.'.
	lb addColorFadingFrom: Color gray to: Color red text: '# of nodes that depend on me'.
	lb build.