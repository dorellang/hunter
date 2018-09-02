initialization
initialize
	cases := OrderedCollection new.
	currentFrame := HNASTMatcherFrame withCases: cases.
	casesMatched := {}

	