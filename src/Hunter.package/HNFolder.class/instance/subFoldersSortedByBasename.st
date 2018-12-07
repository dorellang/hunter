accessing
subFoldersSortedByBasename
	^ self subFolders sorted: [ :a :b | a basename < b basename ]