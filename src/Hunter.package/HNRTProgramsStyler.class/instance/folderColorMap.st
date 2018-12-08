accessing
folderColorMap
	folderColorMap ifNil: [ folderColorMap := HNFolderColorMap new registerProject: project ].
	^ folderColorMap