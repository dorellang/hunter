tests
testWhileStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNWhileStatementNode new
				test: (
					HNFunctionExpressionNode new
						params: {};
						body: (HNBlockStatementNode new
							body: {HNReturnStatementNode new}
						);
						expression: false;
						async: false;
						generator: false
				);
				body: (
					HNVariableDeclarationNode new
						kind: 'var';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'foo')
						}
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil.
	self assert: self defaultProgram variables size equals: 1.
	self assert: self defaultProgram variables first name equals: 'foo'
