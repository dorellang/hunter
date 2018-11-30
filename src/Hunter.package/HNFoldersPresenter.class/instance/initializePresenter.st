specs
initializePresenter
	tree
		childrenBlock: [ :item | item subFolders ];
		displayBlock: [ :item | item basename ];
		iconBlock: [ :item | self iconNamed: #package ].