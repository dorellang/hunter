tests
testEmptyReturnStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: { HNReturnStatementNode new }
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 0.
	self assert: self defaultProgram variables size equals: 0.
