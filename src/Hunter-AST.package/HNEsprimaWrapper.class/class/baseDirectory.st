accessing
baseDirectory
	(BaseDirectory isNil or: [ BaseDirectory exists not ]) ifTrue: [ 
		BaseDirectory := self baseDirectoryGuessIfNotFound: [ 
			self error: 'Please set the repository directory with "HNEsprimaWrapper>>baseDirectory:"' ] ].
	^ BaseDirectory