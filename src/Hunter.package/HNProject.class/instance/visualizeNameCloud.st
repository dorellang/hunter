visualization
visualizeNameCloud
	| lb |
	nameCloud tableObjects ifEmpty: [
		self allChildren select: [ :c | c name notNil ] thenDo: [ :c |
			c name cutCamelCase do: [ :part | nameCloud addObject: c toWord: part ]
		]
	].
	lb := RTLegendBuilder new.
	lb onDemand: '+ Info'.
	lb view: nameCloud view.
	lb addText: 'This shows each word (separated by camelCase) appearing in a JS Identifier.'.
	lb addText: 'Size is proportional to the number of times it is encountered.'.
	lb addText: 'You may click a word to see the entities whose name contain the word.'.
	lb build.
	^ nameCloud