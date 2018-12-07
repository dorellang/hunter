public
let: aSymbol be: aBlock
	self addGlobalVariable: aSymbol.
	self addInitAction: [ :ctx | ctx overrideSymbol: aSymbol with: (aBlock cull: ctx) ]