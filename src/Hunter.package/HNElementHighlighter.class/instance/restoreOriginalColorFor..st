private
restoreOriginalColorFor: anElement
	(anElement hasAttribute: self uniqueAttributeName)
		ifFalse: [ ^ self ].
	anElement trachelShape color: (anElement attributeAt: self uniqueAttributeName).
	anElement removeAttributeAt: self uniqueAttributeName