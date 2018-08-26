visiting
visitTemplateLiteral: aNode
	self checkScopeAtNode: aNode.
	aNode quasis do: [ :quasi | quasi accept: self ].
	aNode expressions do: [ :expr | expr accept: self ]