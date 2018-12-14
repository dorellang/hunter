refreshing
newSelectedEntityHighlightSegment
	| interval |
	interval := self textIntervalForSelectedEntity.
	^ (RubPlainSegmentMorph from: interval first to: interval last)
		color: HNColorTheme selectedSubProgramEntityColor;
		setBalloonText: (selectedEntity accept: HNViz01PopupTextVisitor new);
		yourself