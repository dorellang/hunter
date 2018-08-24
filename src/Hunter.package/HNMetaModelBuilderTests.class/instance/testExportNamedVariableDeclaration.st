tests
testExportNamedVariableDeclaration
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNExportNamedDeclarationNode new
				declaration: (
					HNVariableDeclarationNode new
						kind: 'const';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'meaning');
								init: (HNLiteralNode new value: 42; raw: '42')}
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 1.
	self assert: self defaultProgram variables first kind equals: 'const'.
	self assert: self defaultProgram variables first name equals: 'meaning'.
