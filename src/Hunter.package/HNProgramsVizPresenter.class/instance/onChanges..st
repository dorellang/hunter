refreshing
onChanges: someChanges
	view ifNil: [ ^ self ].
	someChanges
		whenValueChangedAt: #projectSearchResult send: #highlightSearchResult:;
		whenValueChangedAt: #selectedEntity send: #highlightSelectedEntity:;
		whenValueChangedAt: #selectedFolder send: #highlightSelectedFolder:.
	self refreshView.