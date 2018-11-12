visualization
visualizePrograms
	| b lb |
	b := RTMondrian new.
	b shape circle size: #linesOfCode.
	
	b interaction popupText: #filepathInProject; highlightNeighbors: #resolvedDependencies;
		addInteraction: HNHighlightable new.
	
	b nodes: self project programs.
	b shape
		shape: (RTArrowedLine new head: (RTEmptyArrowHead new size: 2; width: 0.5); width: 0.5);
			withShorterDistanceAttachPoint.
	b edges moveBehind; connectToAll: #resolvedDependencies.
	b layout forceWithCharge: -80 "force"; ifNotConnectedThen: RTGridLayout new.
	b normalizer normalizeSize: #linesOfCode using: [:nb | nb sqrt * 100];
		normalizeColor: [:p | p resolvedDependencies size sqrt ];
		alphaColor: 0.5.
	b shape if: [ :program | program  name includesSubstring: searchText caseSensitive: false ] 		fillColor: Color green.
	b view @ RTZoomableView.
	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: b view.
	lb addText: 'Each node represents a JS file.'.
	lb addText: 'And the arrows, the dependencies between them.'.
	lb addText: 'Radio is proportional to lines of code.'.
	lb addColorFadingFrom: Color gray to: Color red text: '# of nodes that depend on me'.
	lb build.
	^ b