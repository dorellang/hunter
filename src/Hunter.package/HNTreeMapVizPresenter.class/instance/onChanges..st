refreshing
onChanges: dataChanges
	dataChanges
		whenValueChangedAt: #selectedEntity
		do: [ :entity | self fullVizRefresh ]