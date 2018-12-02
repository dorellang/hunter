visualization
visualizeNameCloud
	| lb |
	nameCloudTerms tableObjects ifEmpty: [
		self allChildren select: [ :c | c name notNil ] thenDo: [ :c |
			c name cutCamelCase do: [ :part | nameCloudTerms addObject: c toWord: part ]
		]
	].
	nameCloudTerms view @ RTZoomableView.
	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: nameCloudTerms view.
	lb addText: 'This shows each word (separated by camelCase) appearing in a JS Identifier.'.
	lb addText: 'Size is proportional to the number of times it is encountered.'.
	lb addText: 'You may click a word to see the entities whose name contain the word.'.
	lb build.
	^ nameCloudTerms