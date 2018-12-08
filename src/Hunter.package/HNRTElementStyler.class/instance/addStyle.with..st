adding
addStyle: aSymbol with: aBlock
	computedStyles := nil.
	inlineStyles add: (HNRTElementInlineStyle new name: aSymbol; applyStyleBlock: aBlock).