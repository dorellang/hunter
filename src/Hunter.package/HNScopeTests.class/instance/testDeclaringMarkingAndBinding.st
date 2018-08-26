tests
testDeclaringMarkingAndBinding
	self should: [ rootScope bind: 'foo' to: 'foo' ] raise: Error.
	self should: [ rootScope hoistBind: 'bar' to: 'bar' ] raise: Error.
	self should: [ rootScope lookup: 'foo' ] raise: Error.
	self should: [ rootScope lookup: 'foo' occurringBefore: 10 ] raise: Error.
	
	rootScope declare: 'foo'; declare: 'bar'.
	
	self should: [ rootScope bind: 'foo' to: 'foo' ] raise: Error.
	self should: [ rootScope hoistBind: 'bar' to: 'bar' ] raise: Error.
	self should: [ rootScope lookup: 'foo' ] raise: Error.
	self should: [ rootScope lookup: 'foo' occurringBefore: 10 ] raise: Error.

	rootScope markDeclaration: 'foo'.
	rootScope bind: 'foo' to: 'foo'.
	self assert: (rootScope lookup: 'foo') equals: 'foo'.

	rootScope markDeclaration: 'bar'.
	rootScope bind: 'bar' to: 'bar'.
	self assert: (rootScope lookup: 'bar') equals: 'bar'.

	rootScope declareAndMark: 'baz'.
	rootScope bind: 'baz' to: 'baz'.
	self assert: (rootScope lookup: 'bar') equals: 'bar'.