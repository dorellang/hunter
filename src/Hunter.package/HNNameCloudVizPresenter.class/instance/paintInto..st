hooks
paintInto: aViewBuilder
	| lb |
	aViewBuilder view @ RTZoomableView.
	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: aViewBuilder view.
	lb addText: 'This shows each word (separated by camelCase) appearing in a JS Identifier.'.
	lb addText: 'Size is proportional to the number of times it is encountered.'.
	lb addText: 'You may click a word to explore the occurrences.'.
	lb build.