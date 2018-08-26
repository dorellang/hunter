tests
testTrueLiteral
	| interpreter expression value |
	interpreter := HNInterpreter new.
	expression := HNLiteralNode new raw: 'true'; value: true.
	value := expression accept: interpreter.
	self assert: value computedValue.
	self assert: (value referencedNames) equals: {}.