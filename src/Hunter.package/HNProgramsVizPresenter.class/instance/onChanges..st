hooks
onChanges: someChanges
	someChanges
		whenValueChangedAt: #projectSearchResult
			do: [ :aString | self elementHighlighter refresh ];
		whenValueChangedAt: #selectedEntity
			do: [ :aString | self elementHighlighter refresh ]