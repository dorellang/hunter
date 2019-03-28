refreshing
newSelectedEntityHighlightSegment
	| interval |
	interval := selectedEntity intervalInSourceFileContents.
	^ (RubPlainSegmentMorph from: interval first to: interval last)
		color: HNColorTheme selectedSubProgramEntityColor;
		setBalloonText: (selectedEntity accept: HNPopupTextVisitor new);
		yourself