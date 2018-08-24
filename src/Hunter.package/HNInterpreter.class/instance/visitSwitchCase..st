visiting
visitSwitchCase: aSwitchCase
	self interpretAndLink: aSwitchCase test.
	aSwitchCase consequent do: [ :stmt | stmt accept: self ]