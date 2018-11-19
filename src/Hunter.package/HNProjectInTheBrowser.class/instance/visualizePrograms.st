visualization
visualizePrograms
	| b lb |
	b := RTMondrian new.

	"nodes"
	b shape circle size: #linesOfCode; borderColor: Color black.
	b interaction 
		popupText: #filepathInProject; 
		highlightNeighbors: #resolvedDependencies;
		addInteraction: HNHighlightable new.
	b nodes: self project programs.

	"edges"
	b shape
		shape: (RTArrowedLine new head: (RTFilledNarrowArrow asHead size: 4; width: 0.5); width: 0.5);
		color: Color black;
		withShorterDistanceAttachPoint.
	b edges moveBehind; connectToAll: #resolvedDependencies.

	"layout"
	b layout
		forceWithCharge: -80;
		ifNotConnectedThen: RTGridLayout new.

	"nodes' size and color"
	b normalizer 
		normalizeSize: #linesOfCode using: [:nb | nb sqrt ];
		normalizeColor: [:p | p resolvedDependencies size sqrt ];
		alphaColor: 0.5.
	"b shape
		if: [ :program | program  name includesSubstring: searchText caseSensitive: false ]
		fillColor: Color green."

	"view settings"
	b view @ RTZoomableView.
	b view @ elementHighligter.

	"legend"
	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: b view.
	lb addText: 'Each node represents a JS file.'.
	lb addText: 'And the arrows, the dependencies between them.'.
	lb addText: 'Radio is proportional to lines of code.'.
	lb addColorFadingFrom: Color gray to: Color red text: '# of nodes that depend on me'.
	lb build.
	
	^ b