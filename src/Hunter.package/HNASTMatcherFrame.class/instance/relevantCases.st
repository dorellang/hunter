accessing
relevantCases
	^ relevantCases := relevantCases ifNil: [
		OrderedCollection new addAll: descendantRelevantCases;
			addAll: directChildCases;
			sortedAs: #order;
			yourself
	]