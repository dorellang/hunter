visiting
visitObjectExpression: aNode
	"TODO actual interpreting"
	^ self runtimeValueWithReferencedNamesOf: (aNode properties collect: [ :p | p value ]),
		((aNode properties select: [:p | p computed]) collect: [ :p | p key ]) 
	