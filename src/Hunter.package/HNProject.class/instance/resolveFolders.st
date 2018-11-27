folders
resolveFolders
	folder := HNFolder path: self commonPathPrefix asPath.
	self programs do: [ :aHNProgram | 
		"folder registerProgram: aHNProgram"
		(folder ensureCreateFolder: aHNProgram filepath asPath parent) addProgram: aHNProgram ]