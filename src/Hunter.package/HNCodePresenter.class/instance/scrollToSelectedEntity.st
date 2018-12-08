refreshing
scrollToSelectedEntity
	| interval |
	interval := self textIntervalForSelectedEntity.
	textSpecAdapter morph moveCursorToIndex: interval last + 100.
	textSpecAdapter morph moveCursorToIndex: interval first - 100