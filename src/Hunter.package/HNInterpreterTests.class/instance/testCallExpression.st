tests
testCallExpression
	| interpreter project fooVar barVar bazVar program node value |
	interpreter := HNInterpreter new.
	project := HNProject new.
	program := HNProgram new.
	fooVar := HNVariable new name: 'foo'; kind: 'var'.
	barVar := HNVariable new name: 'bar'; kind: 'var'.
	bazVar := HNVariable new name: 'baz'; kind: 'var'.

	interpreter scope: program; scopePosition: 2.
	project addProgram: program.
	program addVariable: fooVar at: 1; addVariable: barVar at: 1; addVariable: bazVar at: 1.

	node := HNCallExpressionNode new
		callee: (HNIdentifierNode new name: 'foo');
		arguments: {
			HNIdentifierNode new name: 'bar'.
			HNIdentifierNode new name: 'baz'.
		}.

	value := node accept: interpreter.
	
	self assert: value computedValue class equals: HNRuntimeValue.
	self assert: value referencedNames asSet equals: { 'foo'. 'bar'. 'baz' } asSet.