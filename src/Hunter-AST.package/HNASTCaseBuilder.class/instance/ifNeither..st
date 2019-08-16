public
ifNeither: specBlock
	| neitherCases |
	neitherCases := specifier compiledCasesFromSpecBlock: specBlock.
	conditions add: [ :x | neitherCases noneSatisfy: [ :case | case matches: x ] ]