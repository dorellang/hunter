tests
testNeitherIdentifierFinder
	| ast processor |
	ast := self basicAST.
	processor := HNNeitherIdentifierFinder new.
	ast accept: processor.
	self assert: processor foundNames size equals: 3.
	self assert: processor foundNames first equals: 'qux'.	
	"these identifiers appear twice because of parse desugaring"
	self assert: processor foundNames second equals: 'quux'.
	self assert: processor foundNames third equals: 'corge'.