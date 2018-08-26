tests
testRecursivelyDefinedIdentifiers
	| interpreter project program fooVar barVar fooVal barVal |
	interpreter := HNInterpreter new.
	project := HNProject new.
	program := HNProgram new.
	fooVar := HNVariable new name: 'foo';
		initValue: (
			(HNIdentifierNode new name: 'bar') accept:
				(HNInterpreter new scope: program; scopePosition: 1)
		).
	barVar := HNVariable new name: 'bar';
		initValue: (
			(HNIdentifierNode new name: 'foo') accept:
				(HNInterpreter new scope: program; scopePosition: 2)
		).
	project addProgram: program.
	program addVariable: fooVar at: 1; addVariable: barVar at: 2.
	interpreter scope: program; scopePosition: 3.

	barVal := (HNIdentifierNode new name: 'bar') accept: interpreter.
	self assert: barVal computedValue equals: HNUndefinedValue new.
	self assert: barVal referencedNames equals: { 'bar' }.
	
	fooVal := (HNIdentifierNode new name: 'foo') accept: interpreter.
	self assert: fooVal computedValue equals: HNUndefinedValue new.
	self assert: fooVal referencedNames equals: { 'foo' }.
