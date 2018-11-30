specs
onChanges: dataChanges
	dataChanges
		whenValueChangedAt: #project
		do: [ :entity | 
			tree
				roots: {entity folder};
				expandAll ]