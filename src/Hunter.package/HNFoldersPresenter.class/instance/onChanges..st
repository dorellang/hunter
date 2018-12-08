specs
onChanges: dataChanges
	dataChanges 
		whenValueChangedAt: #project do: [ 
			self annotateFoldersWithMappedColors.
			tree widget expandRoots ];
		whenValueChangedAt: #selectedEntity send: #expandPathToMetaModel:;
		whenValueChangedAt: #projectSearchResult do: [ treeModel updateList ].