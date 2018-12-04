private
rememberOriginalColorFor: e
	(e hasAttribute: self uniqueAttributeName)
		ifFalse: [ e attributeAt: self uniqueAttributeName put: e trachelShape color ]