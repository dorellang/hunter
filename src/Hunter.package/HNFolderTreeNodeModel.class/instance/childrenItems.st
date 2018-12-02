accessing
childrenItems
	^ (self item isKindOf: HNFolder)
				ifTrue: [
					(self item subFolders , self item programs)
						sortedAs: [ :aProgramOrFolder :anotherOne |
							aProgramOrFolder basename < anotherOne basename
						]
				]
				ifFalse: [ #() ]