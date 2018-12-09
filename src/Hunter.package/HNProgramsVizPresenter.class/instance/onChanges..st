refreshing
onChanges: someChanges
	view ifNil: [ ^ self ].
	someChanges
		whenValueChangedAt: #projectSearchResult send: #highlightSearchResult:;
		whenValueChangedAt: #selectedEntity send: #highlightSelectedEntity:.
	self refreshView.