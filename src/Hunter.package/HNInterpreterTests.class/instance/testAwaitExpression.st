tests
testAwaitExpression
	| interpreter project fooVar program node value |
	interpreter := HNInterpreter new.
	project := HNProject new.
	program := HNProgram new.
	fooVar := HNVariable new name: 'foo'; kind: 'var'.

	interpreter scope: program; scopePosition: 2.
	project addProgram: program.
	program addVariable: fooVar at: 1.

	node := HNAwaitExpressionNode new argument: (HNIdentifierNode new name: 'foo').
	value := node accept: interpreter.
	
	self assert: value computedValue class equals: HNRuntimeValue.
	self assert: value referencedNames asSet equals: { 'foo' } asSet.	