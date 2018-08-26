tests
testIdentifierBoundToMetaModel
	| interpreter project program fooVar fooFn fooVal |
	interpreter := HNInterpreter new.
	project := HNProject new.
	program := HNProgram new.
	fooFn := HNFunction new name: 'foo'.
	fooVar := HNVariable new name: 'foo'; initValue: fooFn.
	project addProgram: program.
	program addVariable: fooVar at: 1.
	interpreter scope: program; scopePosition: 2.
	fooVal := (HNIdentifierNode new name: 'foo') accept: interpreter.
	self assert: fooVal computedValue equals: fooFn.
	self assert: fooVal referencedNames size equals: 1.
	self assert: fooVal referencedNames first equals: 'foo'.
