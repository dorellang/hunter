hooks
paint: aModel into: aView
	"TODO do this more cleanly; should use aModel instead of project :(... And initialModel
	shouldn't depend on project either"
	| lb |
	project nameCloud tableObjects ifEmpty: [
		project allChildren select: [ :c | c name notNil ] thenDo: [ :c |
			c name cutCamelCase do: [ :part | project nameCloud addObject: c toWord: part ]
		]
	].
	project nameCloud view @ RTZoomableView.
	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: project nameCloud view.
	lb addText: 'This shows each word (separated by camelCase) appearing in a JS Identifier.'.
	lb addText: 'Size is proportional to the number of times it is encountered.'.
	lb addText: 'You may click a word to see the entities whose name contain the word.'.
	lb build.