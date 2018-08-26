tests
testFunctionExpression
	| interpreter project program function functionNode value |
	interpreter := HNInterpreter new.
	project := HNProject new.
	program := HNProgram new.
	function := HNFunction new.
	functionNode := HNFunctionExpressionNode new
		params: {};
		generator: false;
		async: false;
		expression: false;
		body: (HNBlockStatementNode new body: {}).

	function definitionNode: functionNode.
	project addProgram: program.
	program addFunction: function.
	interpreter scope: program; scopePosition: 1.
	
	value := functionNode accept: interpreter.

	self assert: value computedValue equals: function.
	self assert: value referencedNames size equals: 0.