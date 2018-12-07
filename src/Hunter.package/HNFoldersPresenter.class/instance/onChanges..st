specs
onChanges: dataChanges
	dataChanges 
		whenValueChangedAt: #selectedEntity send: #expandPathToMetaModel:;
		whenValueChangedAt: #projectSearchResult do: [ treeModel updateList ].