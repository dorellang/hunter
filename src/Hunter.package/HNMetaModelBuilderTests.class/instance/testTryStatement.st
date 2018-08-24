tests
testTryStatement
	"TODO this test is not so accurate since it treats the catch clause error as a regular variable,
		but that's only available to the catch block."
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
				);
				handler: (
					HNCatchClauseNode new
						param: (
							HNArrayPatternNode new
								elements: {
									HNIdentifierNode new name: 'foo'.
									HNIdentifierNode new name: 'bar'
								}
						);
						body: (
							HNBlockStatementNode new
								body: {
									HNVariableDeclarationNode new
										kind: 'var';
										declarations: {
											HNVariableDeclaratorNode new
												id: (HNIdentifierNode new name: 'baz')
										}
								}
						)
				);
				finalizer: (
					HNBlockStatementNode new
						body: {
							HNVariableDeclarationNode new
								kind: 'var';
								declarations: {
									HNVariableDeclaratorNode new
										id: (HNIdentifierNode new name: 'chao')
								}
						}
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 5.
	self assert: self defaultProgram variables first name equals: 'hola'.
	self assert: self defaultProgram variables second name equals: 'foo'.
	self assert: self defaultProgram variables third name equals: 'bar'.
	self assert: self defaultProgram variables fourth name equals: 'baz'.
	self assert: self defaultProgram variables fifth name equals: 'chao'
