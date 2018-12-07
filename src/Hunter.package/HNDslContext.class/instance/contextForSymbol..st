private
contextForSymbol: aSymbol
	^ symbolsToContextDict at: aSymbol ifPresent: [ :ctx | ctx ]
		ifAbsentPut: [ parent contextForSymbol: aSymbol ].