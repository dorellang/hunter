refreshing
onChanges: dataChanges
	dataChanges
		whenValueChangedAt: #selectedEntity
		send: #fullVizRefresh