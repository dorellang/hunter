specs
onChanges: dataChanges
	dataChanges
		whenValueChangedAt: #project do: [ 
			self annotateFoldersWithMappedColors.
			tree widget expandRoots ];
		whenValueChangedAt: #selectedEntity do: [ :entity |
			entity
				ifNil: [ tree morph deselectAll ]
				ifNotNil: [ self expandPathToMetaModel: entity ] ];
		whenValueChangedAt: #selectedFolder do: [ :entity |
			entity
				ifNil: [ tree morph deselectAll ] ];
		whenValueChangedAt: #projectSearchResult send: #updateList to: treeModel