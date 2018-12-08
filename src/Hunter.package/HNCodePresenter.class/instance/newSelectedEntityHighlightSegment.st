refreshing
newSelectedEntityHighlightSegment
	| interval |
	interval := self textIntervalForSelectedEntity.
	^ (RubPlainSegmentMorph from: interval first to: interval last)
		color: (Color blue alpha: 0.2);
		setBalloonText: (selectedEntity accept: HNViz01PopupTextVisitor new);
		yourself