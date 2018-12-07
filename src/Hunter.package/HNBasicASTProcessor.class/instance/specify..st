matching
specify: oneArgBlock
	| rootNode compiled |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: oneArgBlock.
	compiled := HNDslASTCompiler new compile: rootNode.
	matcher := HNDslMatcher new compiledDsl: compiled