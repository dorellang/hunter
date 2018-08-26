tests
testVariableDeclarations
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			(HNVariableDeclarationNode new
				kind: 'let';
				declarations: {
					HNVariableDeclaratorNode new
						id: (HNIdentifierNode new name: 'hola');
						init: (HNLiteralNode new value: 2; raw: '"2"').
					HNVariableDeclaratorNode new
						id: (HNIdentifierNode new name: 'chao');
						init: (HNLiteralNode new value: 3; raw: '"3"')}
			)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 2.
	self assert: (self defaultProgram variables allSatisfy: [ :var | var kind = 'let']).
	self assert: self defaultProgram variables first name equals: 'hola'.
	self assert: self defaultProgram variables second name equals: 'chao'.
