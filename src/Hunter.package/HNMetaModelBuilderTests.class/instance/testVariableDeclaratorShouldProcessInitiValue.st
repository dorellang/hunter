tests
testVariableDeclaratorShouldProcessInitiValue
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			(HNVariableDeclarationNode new
				kind: 'var';
				declarations: {
					HNVariableDeclaratorNode new
						id: (HNIdentifierNode new name: 'hola');
						init: (HNCallExpressionNode new arguments: {};
							callee: (HNFunctionExpressionNode new
								params: {};
								body: (HNBlockStatementNode new
									body: {HNReturnStatementNode new});
								expression: false;
								async: false;
								generator: false))})
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 1.
	self assert: self defaultProgram variables first kind equals: 'var'.
	self assert: self defaultProgram variables first name equals: 'hola'.
	self assert: self defaultProgram functions size equals: 1.
