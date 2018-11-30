specs
initializePresenter
	tree
		childrenBlock: [ :item | 
			(item isKindOf: HNFolder)
				ifTrue: [ item subFolders , item programs ]
				ifFalse: [ #() ] ];
		displayBlock: [ :item | item basename ];
		iconBlock: [ :item | 
			(item isKindOf: HNFolder)
				ifTrue: [ self iconNamed: #package ]
				ifFalse: [ self iconNamed: #glamorousGreenCircle ] ]