tests
testMetaModelParent
	| ast function |
	ast := (HNProgramNode new
		body: {HNFunctionDeclarationNode new
			id: (HNIdentifierNode new name: 'builder');
			params: {HNIdentifierNode new name: 'x'};
			body: (HNBlockStatementNode new body: {
				(HNReturnStatementNode new argument: (HNObjectExpressionNode new properties: {}))
			});
			generator: false;
			async: false;
			expression: true
		}
	).
	ast accept: builder. 
	self assert: project programs size equals: 1.
	self assert: project programs first definitionNode isNotNil.
	self assert: project programs first functions size equals: 1.
	function := self defaultProgram functions first.
	self assert: function parent equals: self defaultProgram.
	self assert: function variables size equals: 1.
	self assert: function variables first name equals: 'x'.
	self assert: function variables first parent equals: function.
