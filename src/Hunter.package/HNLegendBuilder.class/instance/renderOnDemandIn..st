hooks
renderOnDemandIn: aView
	| helpShape helpElement helpGroup popupGroup |
	RTVerticalLineLayout on: group.
	helpShape := RTRoundedBox new borderRadius: 14;
		color: ((Color fromHexString: '263238') alpha: 0.6).
	helpElement := helpShape elementOn: onDemandText.
	helpGroup := RTGroup new
		add: ((RTStyledLabel new color: Color white; bold) elementOn: ' ? ') setAsFixed;
		add: ((RTLabel new color: Color white) elementOn: onDemandText) setAsFixed;
		yourself.
	RTHorizontalLineLayout new gapSize: 0; on: helpGroup.
	RTNest new on: helpElement nest: helpGroup.
	helpElement setAsFixed.
	helpElement  @ RTHighlightable.
	aView add: helpElement; add: helpGroup.
	helpElement translateTo: helpElement extent / 2.
	helpElement translateBy: 5@5.
	helpElement
		@
			(RTPopup new
				alphaPopupBackground: self backgroundTransparencyOnDemand;
				background: Color white
					group: [ :gg :el | 
					popupGroup := self group.
					gg addAll: (popupGroup flatCollect: #yourself) ])