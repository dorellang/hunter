accessing
registerProject: aHNProject
	| colors firstLevelFolders |
	self flag: #todo. "Caprichoso"
	colorByFolderMap at: aHNProject folder put: Color white.
	
	firstLevelFolders := aHNProject folder subFoldersSortedByBasename.
	colors := Color wheel: firstLevelFolders size.
	self deepRegister: firstLevelFolders colors: colors.