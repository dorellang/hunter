private
overrideSymbol: aSymbol with: something
	^ (self contextForSymbol: aSymbol) basicOverrideSymbol: aSymbol with: something