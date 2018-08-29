building
buildProject
	| size processed project |
	parseResultCollection ifNil: [ self buildAST ].
	processed := 0.
	size := parseResultCollection size.
	project := HNProject new.
	'0 of ', size asString, ' source files processed...'
		displayProgressFrom: 0 to: size during: [ :bar |
			bar value: 0.
			parseResultCollection select: [:result | result status = 'ok'] thenDo: [ :result |
				| metaModelBuilder rootScope scopeBuilder identifierBinder importProcessor 
					nameCloudProcessor angularVisitor ast program |
				metaModelBuilder := HNMetaModelBuilder withMetaModel: project programPath: result path.
				rootScope := HNRootScope withProject: project.
				scopeBuilder := HNScopeBuilder withScope: rootScope.
				identifierBinder := HNIdentifierBinder withProject: project.
				importProcessor := HNImportProcessor withProject: project.
				nameCloudProcessor := HNNameCloudProcessor withProject: project.
				angularVisitor := HNAngularJSVisitor withProject: project.
				
				ast := result result.
				ast accept: metaModelBuilder;
					accept: scopeBuilder;
					accept: identifierBinder;
					accept: importProcessor;
					accept: nameCloudProcessor.
					"ast accept: angularVisitor."

				"NOTE Assuming resulting AST has only one Program node at root."
				"(and it's added at end to project by visitor)"
				program := project programs last filepath: result path.

				"Updating progress bar"
				processed := processed + 1.
				bar value: processed.
				bar title: processed asString, ' of ', size asString, ' source files processed...'.	
			] 
		].
	project resolveSuperclassRelations.
	^ project