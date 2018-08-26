tests
testEmptyTryStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNTryStatementNode new
				block: (
					HNBlockStatementNode new
						body: {
							HNVariableDeclarationNode new
								kind: 'var';
								declarations: {
									HNVariableDeclaratorNode new
										id: (HNIdentifierNode new name: 'hola')
								}
						}
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 1.
	self assert: self defaultProgram variables first name equals: 'hola'
