visiting
visitSwitchStatement: aNode
	aNode discriminant accept: self.
	aNode cases do: [ :case | case accept: self ].