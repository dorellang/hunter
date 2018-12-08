refreshing
newFindHighlightSegmentFor: anInterval
	^ (RubPlainSegmentMorph from: anInterval first to: anInterval last + 1)
		color: (Color green alpha: 0.3);
		borderColor: Color black;
		yourself