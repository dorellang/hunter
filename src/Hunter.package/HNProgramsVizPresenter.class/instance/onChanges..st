hooks
onChanges: someChanges
	someChanges
		whenValueChangedAt: #searchTextString
		do: [ :aString | self elementHighlighter highlightElementsUsing: aString ]