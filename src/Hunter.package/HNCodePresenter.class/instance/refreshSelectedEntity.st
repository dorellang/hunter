refreshing
refreshSelectedEntity
	selectedEntity
		ifNil: [ 
			textModel setText: '' ]
		ifNotNil: [ 
			textModel setText: selectedEntity sourceFileContents.
			(selectedEntity isKindOf: HNProgram)
				ifTrue: [ self scrollToTop ]
				ifFalse: [ self scrollToSelectedEntity ] ].
