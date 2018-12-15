building
processParseResult: aHNParseResult in: aHNProject

	| metaModelBuilder rootScope scopeBuilder identifierBinder importProcessor nameCloudProcessor ast |
	aHNParseResult status = 'ok' ifFalse: [ ^self "skip errors" ].
	
	metaModelBuilder := HNMetaModelBuilder withMetaModel: aHNProject programPath: aHNParseResult path.
	rootScope := HNRootScope withProject: aHNProject.
	scopeBuilder := HNScopeBuilder withScope: rootScope.
	identifierBinder := HNIdentifierBinder withProject: aHNProject.
	importProcessor := HNImportProcessor withProject: aHNProject.
	nameCloudProcessor := HNNameCloudProcessor withProject: aHNProject.
	"angularVisitor := HNAngularJSVisitor withProject: aHNProject."
	
	ast := aHNParseResult result.
	ast accept: metaModelBuilder;
		accept: scopeBuilder;
		accept: identifierBinder;
		accept: importProcessor;
		accept: nameCloudProcessor.
		"ast accept: angularVisitor."
