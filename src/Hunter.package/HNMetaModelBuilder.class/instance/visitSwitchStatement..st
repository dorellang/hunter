visiting
visitSwitchStatement: aSwitchStatement
	aSwitchStatement discriminant accept: self.
	aSwitchStatement cases do: [ :aSwitchCase | aSwitchCase accept: self ]