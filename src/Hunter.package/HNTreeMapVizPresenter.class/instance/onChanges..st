refreshing
onChanges: dataChanges
	dataChanges
		whenValueChangedAt: #selectedEntity
		send: #fullVizRefresh.
	dataChanges
		whenValueChangedAt: #stringToFind
		send: #fullVizRefresh.