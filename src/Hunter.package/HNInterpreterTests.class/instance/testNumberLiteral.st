tests
testNumberLiteral
	| interpreter expression value |
	interpreter := HNInterpreter new.
	expression := HNLiteralNode new raw: '1313'; value: 1313.
	value := expression accept: interpreter.
	self assert: (value computedValue) equals: 1313.
	self assert: (value referencedNames) equals: {}.