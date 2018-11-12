private
restoreOriginalColorForElement: anElement
	(anElement hasAttribute: #prevousColorRTHighlightElementsInView)
		ifFalse:  [ ^ self ].
	anElement trachelShape
		color: (anElement attributeAt: #prevousColorRTHighlightElementsInView).
	anElement removeAttributeAt: #prevousColorRTHighlightElementsInView 