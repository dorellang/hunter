tests
testIdentifierFinder
	| ast processor |
	ast := self basicAST.
	processor := HNBasicIdentifierFinder new.
	ast accept: processor.
	self assert: processor foundNames size equals: 8.
	self assert: processor foundNames first equals: 'foo'.
	self assert: processor foundNames second equals: 'qux'.	
	"these identifiers appear twice because of parse desugaring"
	self assert: processor foundNames third equals: 'bar'.
	self assert: processor foundNames fourth equals: 'bar'.
	self assert: processor foundNames fifth equals: 'baz'.
	self assert: processor foundNames sixth equals: 'baz'.
	self assert: processor foundNames seventh equals: 'quux'.
	self assert: processor foundNames eighth equals: 'corge'.