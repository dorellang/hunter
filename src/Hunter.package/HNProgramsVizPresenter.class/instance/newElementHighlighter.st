hooks
newElementHighlighter
	^ HNElementHighlighter new
		addCondition: [ :aRTElement | aRTElement model = selectedEntity ] 
			color: HNColorTheme selectedEntityHighlightColor;
		addCondition: [ :aRTElement | projectSearchResult includes: aRTElement model ] 
			color: HNColorTheme searchHighlightColor;
		yourself