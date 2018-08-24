private
handleFunctionLikeNode: aNode
	aNode id ifNotNil: [ :id | id accept: self ].
	aNode params do: [ :param | self handleDeclarationLValue: param ].
	aNode body accept: self