tests
testStringLiteral
	| interpreter expression value |
	interpreter := HNInterpreter new.
	expression := HNLiteralNode new raw: '"xdddd"'; value: 'xdddd'.
	value := expression accept: interpreter.
	self assert: (value computedValue) equals: 'xdddd'.
	self assert: (value referencedNames) equals: {}.