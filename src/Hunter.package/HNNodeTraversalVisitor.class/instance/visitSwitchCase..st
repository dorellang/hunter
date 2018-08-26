visiting
visitSwitchCase: aNode
	aNode test accept: self.
	aNode consequent do: [ :statement | statement accept: self ]