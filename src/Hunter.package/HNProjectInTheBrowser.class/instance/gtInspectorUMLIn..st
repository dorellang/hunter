visualization
gtInspectorUMLIn: composite
	project hasNoClasses
		ifTrue: [ ^ self ].
	composite roassal2 initializeView: [ self visualizeUML ]