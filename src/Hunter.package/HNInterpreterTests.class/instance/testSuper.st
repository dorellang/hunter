tests
testSuper
	| interpreter project program node value |
	interpreter := HNInterpreter new.
	project := HNProject new.
	program := HNProgram new.

	interpreter scope: program; scopePosition: 2.
	project addProgram: program.

	node := HNSuperNode new.

	value := node accept: interpreter.
	
	self assert: value computedValue class equals: HNRuntimeValue.
	self assert: value referencedNames asSet equals: {} asSet.