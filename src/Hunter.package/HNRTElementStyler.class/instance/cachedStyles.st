accessing
cachedStyles
	cachedStyles ifNil: [ self computeCachedStyles ].
	^ cachedStyles