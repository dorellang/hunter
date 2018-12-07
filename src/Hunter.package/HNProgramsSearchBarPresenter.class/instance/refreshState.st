refreshing
refreshState
	| finder |
	self refreshRadioButtons.
	finder := self finder stringToFind: stringToFind.
	projectSearchResult := finder findEntities: self project programs.