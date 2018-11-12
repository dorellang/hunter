initialization
rememberPreviousColorIfNecessaryFor: e
	(e hasAttribute: #prevousColorRTHighlightElementsInView)
		ifFalse: [ e
				attributeAt: #prevousColorRTHighlightElementsInView
				put: e trachelShape color ]