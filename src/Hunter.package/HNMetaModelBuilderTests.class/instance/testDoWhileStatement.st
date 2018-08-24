tests
testDoWhileStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNDoWhileStatementNode new
				test: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNUnaryExpressionNode new
							operator: '+';
							argument: (HNLiteralNode new value: 1; raw: '"1"'));
							generator: false;
							async: false;
							expression: true);
				body: (
					HNBlockStatementNode new 
						body: {
							HNVariableDeclarationNode new
								kind: 'var';
								declarations: {
									HNVariableDeclaratorNode new id: (HNIdentifierNode new name: 'foo')
								}.
								HNFunctionDeclarationNode new
									id: (HNIdentifierNode new name: 'bar');
									params: {};
									body: (HNBlockStatementNode new body: {});
									generator: false;
									expression: false;
									async: false
						}
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 1.
	self assert: self defaultProgram variables first name equals: 'foo'.
	self assert: self defaultProgram functions size equals: 2.
	self assert: self defaultProgram functions second name equals: 'bar'.
