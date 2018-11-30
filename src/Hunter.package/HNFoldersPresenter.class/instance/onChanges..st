specs
onChanges: dataChanges
	dataChanges
		whenValueChangedAt: #project
		do: [ :aProject | 
			tree
				roots: {aProject folder};
				expandAll ]