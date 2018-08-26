visiting
visitTaggedTemplateExpression: aNode
	self checkScopeAtNode: aNode.
	aNode tag accept: self.
	aNode quasi accept: self.