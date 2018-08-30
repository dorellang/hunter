tests
testEitherIdentifierFinder
	| ast processor |
	ast := self basicAST.
	processor := HNEitherIdentifierFinder new.
	ast accept: processor.
	self assert: processor foundNames size equals: 3.
	self assert: processor foundNames first equals: 'foo'.
	"bar identifier appears twice because of parse desugaring"
	self assert: processor foundNames second equals: 'bar'.
	self assert: processor foundNames second equals: 'bar'.