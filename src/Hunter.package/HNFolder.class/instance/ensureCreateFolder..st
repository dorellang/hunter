accessing
ensureCreateFolder: aPath
	^ path = aPath
		ifTrue: [ self ]
		ifFalse: [
			| immediateFolder | 
			immediateFolder := self ensureCreateFolder: aPath parent.
			immediateFolder
				subFolderAtBasename: aPath basename 
				ifAbsentPut: [ HNFolder path: aPath parent: immediateFolder ]  ]