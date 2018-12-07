public
set: aSymbol to: aBlock
	caseConfigurator addContextChangingAction: [ :node :ctx |
		ctx overrideSymbol: aSymbol with: (aBlock hnCull: node cull: ctx)
	]