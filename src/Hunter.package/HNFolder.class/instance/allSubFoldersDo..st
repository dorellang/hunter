accessing
allSubFoldersDo: aBlock
	"maybe this could be more performant"
	aBlock value: self.
	^ self subFolders do: [ :aFolder |
		aFolder allSubFoldersDo: aBlock.
	]