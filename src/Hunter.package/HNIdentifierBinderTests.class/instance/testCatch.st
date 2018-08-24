tests
testCatch
	| ast programScope catchScope |
	ast := HNProgramNode new
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
	ast accept: metaModelBuilder.
	ast accept: scopeProcessor.
	ast accept: identifierBinder.
	programScope := project scopeFromNode: ast.
	catchScope := project scopeFromNode: ast body second handler.
		
	self assert: ast body first declarations first id scope equals: programScope.
	self assert: ast body second handler param scope equals: catchScope.
	self assert: ast body second handler body body first declarations first id scope
		equals: catchScope.
	self assert: ast body second handler body body second id scope equals: programScope.