visiting
visitSwitchStatement: aNode
	self checkScopeAtNode: aNode.
	aNode discriminant accept: self.
	aNode cases do: [ :case | case accept: self ].