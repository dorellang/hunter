visiting
visitTemplateLiteral: aNode
	aNode quasis do: [ :quasi | quasi accept: self ].
	aNode expressions do: [ :expr | expr accept: self ]