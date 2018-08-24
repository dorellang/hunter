private
handleIdentifierHoistDeclaration: anIdentifier withScope: aScope value: aValue
	aScope declareAndMark: anIdentifier name.
	aScope hoistBind: anIdentifier name to: aValue.