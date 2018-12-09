caching
computeCachedStyles
	cachedStyles := self class styles, inlineStyles.
	cachedStylesByName := Dictionary new.
	cachedStyles do: [ :aStyle |
		cachedStylesByName at: aStyle name put: aStyle
	]