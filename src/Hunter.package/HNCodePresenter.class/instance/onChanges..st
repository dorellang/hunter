refreshing
onChanges: dataChanges
	dataChanges
		whenValueChangedAt: #selectedEntity
		do: [ :entity | 
			self removeHighlight.
			textModel setText: entity sourceFileContents.
			self flag: #todo.	"Rewrite in a nicer way"
			(selectedEntity isKindOf: HNProgram)
				ifTrue: [ self scrollToTop ]
				ifFalse: [ self scrollAndHighlightSelectedEntity ] ]