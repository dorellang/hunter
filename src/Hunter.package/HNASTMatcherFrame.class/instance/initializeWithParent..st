initialization
initializeWithParent: aFrame
	self initialize.
	parent := aFrame.
	descendantRelevantCases := aFrame descendantRelevantCases.
	descendantRelevantCasesDict := aFrame descendantRelevantCasesDict