tests
testFalseLiteral
	| interpreter expression value |
	interpreter := HNInterpreter new.
	expression := HNLiteralNode new raw: 'false'; value: false.
	value := expression accept: interpreter.
	self assert: value computedValue not.
	self assert: (value referencedNames) equals: {}.