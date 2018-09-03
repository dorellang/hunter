matching
matchCasesFor: aNode
	| newRelevantCases newCasesMatched relevantCases mightHaveSubcases |
	self haltIf: [ directChildCases notEmpty ].
	relevantCases := OrderedCollection new addAll: descendantRelevantCases;
		addAll: directChildCases;
		yourself.
	mightHaveSubcases := false.
	casesMatched := newCasesMatched := relevantCases select: [ :c |
		| matched |
		matched := c matches: aNode.
		mightHaveSubcases := mightHaveSubcases or: [ matched and: [ c subcases notEmpty ] ].
		matched
	].
	mightHaveSubcases ifFalse: [ casesMatched sortedAs: #order. ^ self].
	[
		newRelevantCases := newCasesMatched flatCollect: #subcases.
		newRelevantCases notEmpty
	] whileTrue: [
		newCasesMatched := newRelevantCases select: [ :c | c matches: aNode ].
		casesMatched addAll: newCasesMatched
	].
	casesMatched sortedAs: #order