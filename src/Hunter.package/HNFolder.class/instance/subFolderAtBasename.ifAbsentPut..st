accessing
subFolderAtBasename: aString ifAbsentPut: aBlockClosure

	^ self subFolders 
		detect: [:each | each basename = aString ] 
		ifNone: [ 
			| newFolder |
			newFolder := aBlockClosure value.
			self subFolders add: newFolder.
			newFolder ].
