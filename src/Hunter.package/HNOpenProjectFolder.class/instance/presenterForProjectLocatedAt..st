opening
presenterForProjectLocatedAt: aDirectory
	| project |
	project := self readProjectLocatedAt: aDirectory.
	project inspect.
	^ HNProjectBrowser on: [ :b | b project: project ]