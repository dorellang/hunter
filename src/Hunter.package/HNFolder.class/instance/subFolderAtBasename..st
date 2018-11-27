accessing
subFolderAtBasename: aString
	^ self subFolders detect: [ :each | each basename = aString ]