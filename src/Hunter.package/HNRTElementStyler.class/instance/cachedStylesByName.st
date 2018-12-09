accessing
cachedStylesByName
	cachedStylesByName  ifNil: [ self computeCachedStyles ].
	^ cachedStylesByName