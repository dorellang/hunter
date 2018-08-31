visiting
visitSwitchStatement: aNode
	self matcher processNode: aNode.
	aNode discriminant accept: self.
	aNode cases do: [ :case | case accept: self ]