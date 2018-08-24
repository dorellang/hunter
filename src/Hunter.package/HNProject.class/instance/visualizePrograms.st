visualization
visualizePrograms
	| b lb |
	b := RTMondrian new.
	b shape circle size: #linesOfCode.
	b interaction popupText: #filepathInProject; highlightNeighbors: #resolvedDependencies.
	b nodes: self programs.
	b shape
		shape: (RTArrowedLine new head: (RTEmptyArrowHead new size: 2; width: 0.5); width: 0.5);
			withShorterDistanceAttachPoint.
	b edges connectToAll: #resolvedDependencies.
	b layout forceWithCharge: -80 "force"; ifNotConnectedThen: RTGridLayout new.
	b normalizer normalizeSize: #linesOfCode using: [:nb | nb sqrt * 100];
		normalizeColor: [:p | p resolvedDependencies size sqrt ];
		alphaColor: 0.5.
	lb := RTLegendBuilder new.
	lb onDemand: '+ Info'.
	lb view: b view.
	lb addText: 'Each node represents a JS file.'.
	lb addText: 'And the arrows, the dependencies between them.'.
	lb addText: 'Radio is proportional to lines of code.'.
	lb addColorFadingFrom: Color gray to: Color red text: '# of nodes that depend on me'.
	lb build.
	^ b