specs
initializeWidgets
	treeModel := HNFolderTreeModel new
		project: project;
		onSelectionChangeSend: #onMorphTreeSelectionChanged: to: self;
		yourself.
	tree := treeModel defaultTreeMorph buildContents asSpecAdapter.