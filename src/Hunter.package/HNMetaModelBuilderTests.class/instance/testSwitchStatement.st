tests
testSwitchStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNSwitchStatementNode new
				discriminant: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNLiteralNode new value: 99; raw: '99');
						expression: true;
						async: false;
						generator: false
				);
				cases: {
					(HNSwitchCaseNode new
						test: (HNCallExpressionNode new
							callee: (HNFunctionExpressionNode new
								id: (HNIdentifierNode new name: 'testFunc');
								params: {};
								body: (HNBlockStatementNode new
									body: {HNReturnStatementNode new
										argument: (HNLiteralNode new value: 0; raw: '0')}));
							arguments:{});
						consequent: {HNReturnStatementNode new}).
					(HNSwitchCaseNode new
						test: (HNLiteralNode new value: 1);
						consequent: {
							HNVariableDeclarationNode new
								kind: 'let';
								declarations: {
									HNVariableDeclaratorNode new id: (HNIdentifierNode new name: 'hello')
								}
							}
						).
					(HNSwitchCaseNode new
						consequent: {
							HNVariableDeclarationNode new
								kind: 'let';
								declarations: {
									HNVariableDeclaratorNode new id: (HNIdentifierNode new name: 'elseVar')
								}
							}
						)
				}
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 2.
	self assert: self defaultProgram functions first name isNil.
	self assert: self defaultProgram functions second name equals: 'testFunc'.
	self assert: self defaultProgram variables size equals: 2.
	self assert: self defaultProgram variables first name equals: 'hello'.
	self assert: self defaultProgram variables second name equals: 'elseVar'.
