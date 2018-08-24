visiting
visitSwitchCase: aSwitchCase
	aSwitchCase test ifNotNil: [ aSwitchCase test accept: self ].
	aSwitchCase consequent do: [ :stmt | stmt accept: self ]