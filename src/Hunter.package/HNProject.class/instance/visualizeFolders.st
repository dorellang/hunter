visualization
visualizeFolders
	| b |
	b := RTMondrian new.
	b shape circle size: 10.
	b nodes: self allFolders.
	b edges connectFrom: #parent.
	b layout radialTree.
	b build.
	^ b view