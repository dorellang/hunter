visiting
visitSwitchStatement: aSwitchStatement
	self interpretAndLink: aSwitchStatement discriminant.
	aSwitchStatement cases do: [ :case | case accept: self ]