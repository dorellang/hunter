tests
testCatch
	| programAST programScope function catchScope |
	programAST := HNProgramNode new
		sourceType: 'script';
		body: {
			HNVariableDeclarationNode new
				kind: 'let';
				declarations: {
					HNVariableDeclaratorNode new
						id: (HNIdentifierNode new name: 'foo');
						init: (HNLiteralNode new value: 23; raw: '23')
				}.
			HNTryStatementNode new
				block: (HNBlockStatementNode new body: {});
				handler: (HNCatchClauseNode new
					param: (HNIdentifierNode new name: 'error');
					body: (HNBlockStatementNode new body: {
						HNVariableDeclarationNode new
							kind: 'let';
							declarations: {
								HNVariableDeclaratorNode new
									id: (HNIdentifierNode new name: 'baz');
									init: (HNLiteralNode new value: 42; raw: '42')
							}.
						HNFunctionDeclarationNode new
							id: (HNIdentifierNode new name: 'bar');
							params: {};
							body: (HNBlockStatementNode new body: {});
							generator: false;
							expression: false;
							async: false.
					})
				)
		}.
	programAST accept: metaModelBuilder.
	programAST accept: scopeProcessor.
	programScope := project scopeFromNode: programAST.
	catchScope := project scopeFromNode: programAST body second handler.
	function := self program functions first.
	
	self assert: programScope ~= catchScope.
		
	"assertions about scopes"
	self assert: (programScope isDeclared: 'foo').
	self assert: (programScope isDeclared: 'bar').
	self assert: (catchScope isDeclared: 'baz').
	self assert: (catchScope isDeclared: 'error')