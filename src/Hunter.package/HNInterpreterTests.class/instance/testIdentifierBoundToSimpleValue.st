tests
testIdentifierBoundToSimpleValue
	| interpreter project program bazVar bazVal barVal |
	interpreter := HNInterpreter new.
	project := HNProject new.
	program := HNProgram new.
	bazVar := HNVariable new name: 'baz'; initValue: (HNValue new computedValue: 666).

	project addProgram: program.
	program addVariable: bazVar at: 1.
	interpreter scope: program; scopePosition: 2.
	bazVal := (HNIdentifierNode new name: 'baz') accept: interpreter.
	barVal := (HNIdentifierNode new name: 'bar') accept: interpreter.

	self assert: bazVal computedValue equals: 666.
	self assert: bazVal referencedNames size equals: 1.
	self assert: bazVal referencedNames first equals: 'baz'.
	self assert: barVal computedValue equals: HNUndefinedValue new
