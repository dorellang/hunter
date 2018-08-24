tests
testSimpleFunctionDeclaration
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNFunctionDeclarationNode new
				id: (HNIdentifierNode new name: 'foo');
				params: {HNIdentifierNode new name: 'dummy'};
				body: (HNBlockStatementNode new
					body: {
						HNVariableDeclarationNode new
								kind: 'let';
								declarations: {HNVariableDeclaratorNode new
									id: (HNIdentifierNode new name: 'result');
									init: (HNLiteralNode new value: 2; raw: '2')}.
						HNReturnStatementNode new argument: (HNIdentifierNode new name: 'result')});
				generator: false;
				expression: false;
				async: false
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram variables size equals: 0.
	self assert: self defaultProgram functions first name equals: 'foo'.
	self assert: self defaultProgram functions first arguments size equals: 1.
	self assert: self defaultProgram functions first arguments first name equals: 'dummy'.
	self assert: self defaultProgram functions first variables size equals: 2.
	self assert: self defaultProgram functions first variables first
		equals: self defaultProgram functions first arguments first.
	self assert: self defaultProgram functions first variables second name equals: 'result'.
