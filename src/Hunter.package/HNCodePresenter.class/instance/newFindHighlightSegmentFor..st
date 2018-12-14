refreshing
newFindHighlightSegmentFor: anInterval
	^ (RubPlainSegmentMorph from: anInterval first to: anInterval last + 1)
		color: HNColorTheme searchHighlightColor;
		borderColor: HNColorTheme searchHighlightColor blacker;
		yourself