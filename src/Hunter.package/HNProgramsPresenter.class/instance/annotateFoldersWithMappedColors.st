accessing
annotateFoldersWithMappedColors
	| folderColorMap |
	self flag: #todo. "It was difficult to inform the tree nodes about the map so this is a quick workarond."
	folderColorMap := HNFolderColorMap new
		registerProject: project;
		yourself.
	project allFolders do: [ :each | 
		each
			attributeAt: #mappedColor
			put: (folderColorMap colorAt: each) ]