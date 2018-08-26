tests
testNullLiteral
	| interpreter expression value |
	interpreter := HNInterpreter new.
	expression := HNLiteralNode new raw: 'null'; value: nil.
	value := expression accept: interpreter.
	self assert: (value computedValue) isNil.
	self assert: (value referencedNames) equals: {}.