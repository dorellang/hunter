accessing
icon
	^ (self item isKindOf: HNFolder)
				ifTrue: [ self iconNamed: #package ]
				ifFalse: [ self iconNamed: #collection ]