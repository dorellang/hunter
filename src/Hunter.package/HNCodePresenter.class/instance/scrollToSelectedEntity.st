refreshing
scrollToSelectedEntity
	| interval |
	interval := selectedEntity intervalInSourceFileContents.
	textSpecAdapter morph moveCursorToIndex: interval last + 100.
	textSpecAdapter morph moveCursorToIndex: interval first - 100