public
let: aSymbol be: aBlock
	caseConfigurator addLocalVariable: aSymbol.
	caseConfigurator addContextChangingAction: [ :node :ctx |
		ctx overrideSymbol: aSymbol with: (aBlock hnCull: node cull: ctx)
	]