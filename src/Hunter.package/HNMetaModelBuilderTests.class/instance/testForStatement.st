tests
testForStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNForStatementNode new
				init: (
					HNVariableDeclarationNode new
						kind: 'var';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'i')});
				test: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNUnaryExpressionNode new
							operator: '+';
							argument: (HNLiteralNode new value: 1; raw: '"1"'));
							generator: false;
							async: false;
							expression: true);
				update: (
					HNUpdateExpressionNode new
						operator: '++';
						argument: (HNIdentifierNode new name: 'i');
						prefix: false);
				body: (HNVariableDeclarationNode new
							kind: 'var';
							declarations: {
								HNVariableDeclaratorNode new
									id: (HNIdentifierNode new name: 'foo')})
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 2.
	self assert: self defaultProgram variables first name equals: 'i'.
	self assert: self defaultProgram variables second name equals: 'foo'.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil.
