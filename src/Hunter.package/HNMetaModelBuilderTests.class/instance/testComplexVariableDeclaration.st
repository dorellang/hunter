tests
testComplexVariableDeclaration
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNVariableDeclarationNode new
				kind: 'const';
				declarations: {
					HNVariableDeclaratorNode new
						id: (HNObjectPatternNode new
								properties: {
									HNPropertyNode new
										key: (HNIdentifierNode new name: 'konnichiha');
										computed: false;
										value: (HNIdentifierNode new name: 'hi');
										kind:  'init';
										method: false;
										shorthand: false.
									HNPropertyNode new
										key: (HNIdentifierNode new name: 'foo');
										computed: false;
										value: (HNIdentifierNode new name: 'foo');
										kind: 'init';
										method: false;
										shorthand: true})}
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 2.
	self assert: (self defaultProgram variables allSatisfy: [:aVariable | aVariable kind = 'const']).
	self assert: self defaultProgram variables first name equals: 'hi'.
	self assert: self defaultProgram variables second name equals: 'foo'.
