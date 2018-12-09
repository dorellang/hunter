accessing
styleNamed: aSymbol
	self flag: #todo. "maybe log when nil"
	^ self cachedStylesByName at: aSymbol ifAbsent: [ nil ]