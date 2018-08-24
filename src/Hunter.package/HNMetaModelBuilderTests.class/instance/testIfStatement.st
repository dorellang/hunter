tests
testIfStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNIfStatementNode new
				test: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNLiteralNode new value: 2; raw: '"2"');
						generator: false;
						async: false;
						expression: true);
				consequent: (
					HNVariableDeclarationNode new
						kind: 'var';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'myVar');
								init: (HNLiteralNode new value: 42; raw: '42')})
		}
	).

	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil.
	self assert: self defaultProgram variables size equals: 1.
	self assert: self defaultProgram variables first name equals: 'myVar'.
