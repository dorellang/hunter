tests
testIdentifierBoundToAnotherIdentifier
	| interpreter project scope fooVal fooFn |
	interpreter := HNInterpreter new.
	project := HNProject new.
	scope := HNProgram new.
	project addProgram: scope.
	fooFn := HNFunction new
		name: 'foo'.

	interpreter scope: scope; scopePosition: 2.
	scope 	addVariable: (HNVariable new
		name: 'foo';
		initValue: fooFn
	) at: 1 ; addVariable: (HNVariable new
		name: 'bar';
		initValue: ((HNIdentifierNode new name: 'foo') accept: interpreter)
	) at: 1.

	fooVal := (HNIdentifierNode new name: 'bar') accept: interpreter.
	self assert: fooVal computedValue equals: fooFn.
	self assert: fooVal referencedNames size equals: 1.
	self assert: fooVal referencedNames first equals: 'bar'.
