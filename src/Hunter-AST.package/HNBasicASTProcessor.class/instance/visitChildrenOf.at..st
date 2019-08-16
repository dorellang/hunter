visiting
visitChildrenOf: aNode at: getterSelector
	self matcher visitingChildrenAt: getterSelector with: [
		(aNode perform: getterSelector) ifNotNil: [ :x |
			x isCollection 
				ifTrue: [ x do: [ :n | n ifNotNil: [ n accept: self ] ] ]
				ifFalse: [ x accept: self ] 
		].
	]