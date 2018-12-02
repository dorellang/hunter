specs
onChanges: dataChanges
	dataChanges whenValueChangedAt: #selectedEntity send: #expandPathToMetaModel:.
	