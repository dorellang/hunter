hooks
onChanges: someChanges
	someChanges
		whenValueChangedAt: #searchTextString
			do: [ :aString | self elementHighlighter refresh ];
		whenValueChangedAt: #selectedEntity
			do: [ :aString | self elementHighlighter refresh ]