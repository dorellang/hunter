hooks
newElementHighlighter
	^ HNElementHighlighter new
		addCondition: [ :aRTElement | aRTElement model = selectedEntity ] 
			color: (UIManager default theme selectionColor);
		addCondition: [ :aRTElement | projectSearchResult includes: aRTElement model ] 
			color: (Color green alpha: 0.8);
		yourself