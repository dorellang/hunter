specs
initializeWidgets
	treeModel := HNFolderTreeModel new
		project: project;
		projectSearchResultDataBinding: self &#projectSearchResult;
		onSelectionChangeSend: #onMorphTreeSelectionChanged: to: self;
		yourself.
	tree := treeModel defaultTreeMorph buildContents asSpecAdapter.