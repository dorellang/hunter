tests
testEmpty
	| builder holder |
	builder := HNDslCaseHolderBuilder new.
	holder := builder build.
	self assert: holder isEmpty