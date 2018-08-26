tests
testRegExpLiteral
	| interpreter expression regex value |
	interpreter := HNInterpreter new.
	regex := (HNRegexNode new pattern: 'hola'; flags: ''). 
	expression := HNLiteralNode new raw: '/hola/';
		value: '/hola/';
		regex: regex.
	value := expression accept: interpreter.
	self assert: value computedValue equals: regex.
	self assert: (value referencedNames) equals: {}.