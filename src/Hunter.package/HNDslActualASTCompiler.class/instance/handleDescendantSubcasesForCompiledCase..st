hooks
handleDescendantSubcasesForCompiledCase: aCase
	| descendantSubcaseHolderBuilder |
	descendantSubcaseHolderBuilder := HNDslCaseHolderBuilder new.
	self descendantSubcaseCompilers do: [ :aCompiler |
		descendantSubcaseHolderBuilder addCase: aCompiler compile
	].
	aCase descendantSubcaseHolder: descendantSubcaseHolderBuilder build