accessing
registerProject: aHNProject
	| firstLevelFolders |
	colorByFolderMap at: aHNProject folder put: Color transparent.
	firstLevelFolders := aHNProject folder subFoldersSortedByBasename.
	self 
		registerFolders: firstLevelFolders
		colors: (self colorsForFirstLevelSubFoldersFor: firstLevelFolders)