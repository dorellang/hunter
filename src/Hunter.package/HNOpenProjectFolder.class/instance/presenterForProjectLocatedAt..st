opening
presenterForProjectLocatedAt: aDirectory
	| project |
	project := self readProjectLocatedAt: aDirectory.
	^ HNProjectBrowser on: [ :b | b project: project ]