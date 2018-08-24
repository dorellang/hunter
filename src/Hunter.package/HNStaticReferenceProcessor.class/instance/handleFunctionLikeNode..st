private
handleFunctionLikeNode: aNode	
	aNode params do: [ :param | self handleDeclarationLValue: param ].
	aNode body accept: self