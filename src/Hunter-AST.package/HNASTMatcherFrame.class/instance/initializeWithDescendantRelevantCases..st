initialization
initializeWithDescendantRelevantCases: cases
	self initialize.
	descendantRelevantCases := cases.
	cases do: [ :case | descendantRelevantCasesDict at: case put: 1 ]