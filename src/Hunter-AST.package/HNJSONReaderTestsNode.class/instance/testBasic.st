tests
testBasic

	| parseResults parsedAST variableDeclaration variableDeclarator |
	parseResults := HNEsprimaWrapper parseResultsFromStream: self esprimaWrapperOutputString readStream.

	self assert: parseResults class equals: Array.
	self assert: parseResults size equals: 1.

	parsedAST := parseResults first result.
	self deny: parsedAST isNil.
	self assert: parsedAST type equals: 'Program'.
	self assert: parsedAST body size equals: 1.	

	variableDeclaration := parsedAST body at: 1.
	self assert: variableDeclaration parent equals: parsedAST.
	self assert: variableDeclaration type equals: 'VariableDeclaration'.
	self assert: variableDeclaration kind equals: 'var'.
	self assert: variableDeclaration declarations size equals: 1.

	variableDeclarator := variableDeclaration declarations at: 1.
	self assert: variableDeclarator id name equals: 'answer'.
	self assert: variableDeclarator id parent equals: variableDeclarator.
	self assert: variableDeclarator parent equals: variableDeclaration.
	self assert: variableDeclarator init type equals: 'BinaryExpression'.

	