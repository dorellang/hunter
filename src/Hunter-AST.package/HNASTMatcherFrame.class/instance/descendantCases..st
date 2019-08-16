accessing
descendantCases: someCases
	newDescendantCases := someCases reject: [ :c | descendantRelevantCasesDict includesKey: c ].
	someCases do: [ :case |
		| count |
		count := descendantRelevantCasesDict at: case ifAbsent: 0.
		descendantRelevantCasesDict at: case put: count + 1.
	].
	descendantRelevantCases addAll: newDescendantCases.