tests
testRootContext
	| context |
	context := HNDslRootContext withSymbols: #(foo bar).
	self assert: context foo isNil.
	self assert: context bar isNil.
	context foo: 'hello'.
	self assert: context foo equals: 'hello'.
	context bar: 'world'.
	self assert: context bar equals: 'world'.
	self should: [ context baz ] raise: HNDslVariableNotFound.
	self should: [ context baz: 42 ] raise: HNDslVariableNotFound