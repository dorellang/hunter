tests
testGlobalWithoutDefinition
	| ast programScope funcId consoleId |
	ast := HNProgramNode new
		sourceType: 'script';
		body: {
			HNFunctionDeclarationNode new
				id: (HNIdentifierNode new name: 'func');
				params: {};
				body: (HNBlockStatementNode new
					body: {HNReturnStatementNode new argument: (HNIdentifierNode new name: 'console')}
				);
				async: false;
				expression: false;
				generator: false.
		}.
	ast accept: metaModelBuilder.
	ast accept: scopeProcessor.
	ast accept: identifierBinder.
	programScope := project scopeFromNode: ast.
	funcId := ast body first id.
	consoleId := ast body first body body first argument.
	
	self assert: funcId scope equals: programScope.
	self assert: consoleId scope equals: programScope.
	self assert: (programScope isDeclared: 'console')