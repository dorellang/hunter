public
ifEither: specBlock
	| eitherCases |
	eitherCases := specifier compiledCasesFromSpecBlock: specBlock.
	conditions add: [ :x | eitherCases anySatisfy: [ :case | case matches: x ] ]