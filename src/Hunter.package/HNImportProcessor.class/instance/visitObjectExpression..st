visiting
visitObjectExpression: aNode
	aNode properties do: [ :p |
		p computed ifTrue: [ p key accept: self ].
		p value ifNotNil: [ :v | v accept: self ]
	]