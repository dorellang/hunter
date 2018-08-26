visualization
gtInspectorUMLIn: composite
	<gtInspectorPresentationOrder: -10>
	self hasNoClasses ifTrue: [ ^ self ].
	composite roassal2
		title: 'UML';
		initializeView: [ self visualizeUML ]
