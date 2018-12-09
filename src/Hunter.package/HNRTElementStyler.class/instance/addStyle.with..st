adding
addStyle: aSymbol with: aBlock
	cachedStyles := nil.
	inlineStyles add: (HNRTElementInlineStyle new name: aSymbol; applyStyleBlock: aBlock).