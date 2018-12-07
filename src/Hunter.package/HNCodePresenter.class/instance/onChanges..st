refreshing
onChanges: dataChanges
	self flag: #todo.	"Rewrite in a nicer way"
	dataChanges
		whenValueChangedAt: #selectedEntity
		do: [ :entity | 
			self removeHighlight.
			entity
				ifNil: [ textModel setText: '' ]
				ifNotNil: [ 
					textModel setText: entity sourceFileContents.
					(selectedEntity isKindOf: HNProgram)
						ifTrue: [ self scrollToTop ]
						ifFalse: [ self scrollAndHighlightSelectedEntity ] ] ]