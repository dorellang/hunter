refreshing
scrollAndHighlightSelectedEntity
	| segmentBegin segmentEnd |
	segmentBegin := selectedEntity definitionNode range first + 1.
	segmentEnd := selectedEntity definitionNode range second + 1.
	text morph moveCursorToIndex: segmentEnd + 100.
	text morph moveCursorToIndex: segmentBegin - 100.
	text morph
		addSegment:
			((RubPlainSegmentMorph from: segmentBegin to: segmentEnd)
				color: (Color green alpha: 0.2);
				yourself)