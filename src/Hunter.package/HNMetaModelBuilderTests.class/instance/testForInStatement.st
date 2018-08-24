tests
testForInStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNForInStatementNode new
				left: (HNVariableDeclarationNode new
						kind: 'var';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'prop')});
				right: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNLiteralNode new value: 2; raw: '2');
						generator: false;
						async: false;
						expression: true);
				body: (
					HNVariableDeclarationNode new
						kind: 'const';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'hola');
								init: (HNLiteralNode new value: 42; raw: '42')});
				each: false
		}
	).

	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil.
	self assert: self defaultProgram variables size equals: 2.
	self assert: self defaultProgram variables first name equals: 'prop'.
	self assert: self defaultProgram variables second name equals: 'hola'.
