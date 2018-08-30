tests
testUnlessIdentifierFinder
	| ast processor |
	ast := self basicAST.
	processor := HNUnlessIdentifierFinder new.
	ast accept: processor.
	self assert: processor foundNames size equals: 7.
	self assert: processor foundNames first equals: 'qux'.	
	"these identifiers appear twice because of parse desugaring"
	self assert: processor foundNames second equals: 'bar'.
	self assert: processor foundNames third equals: 'bar'.
	self assert: processor foundNames fourth equals: 'baz'.
	self assert: processor foundNames fifth equals: 'baz'.
	self assert: processor foundNames sixth equals: 'quux'.
	self assert: processor foundNames seventh equals: 'corge'.