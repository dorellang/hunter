tests
testBlockStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNBlockStatementNode new
			body: {
				HNVariableDeclarationNode new
					kind: 'var';
					declarations: {
						HNVariableDeclaratorNode new
							id: (HNIdentifierNode new name: 'foo')
					}.
				HNVariableDeclarationNode new
					kind: 'const';
					declarations: {
						HNVariableDeclaratorNode new
							id: (HNIdentifierNode new name: 'baz')
					}.
				HNFunctionDeclarationNode new
					id: (HNIdentifierNode new name: 'bar');
					params: {};
					body: (HNBlockStatementNode new body: {});
					generator: false;
					expression: false;
					async: false
			}.
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 2.
	self assert: self defaultProgram variables first name equals: 'foo'.
	self assert: self defaultProgram variables second name equals: 'baz'.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name equals: 'bar'.
