deleting
destroy
	newDescendantCases size timesRepeat: [
		| removed count |
		removed := descendantRelevantCases removeLast.
		count := descendantRelevantCasesDict at: removed.
		count <= 1 ifTrue: [ descendantRelevantCasesDict removeKey: removed ]
			ifFalse: [ descendantRelevantCasesDict at: removed put: count - 1 ]
	]