visiting
visitBlockStatement: aBlockStatement
	| blockScope childInterpreter |
	blockScope := scope metaModelFromNode: aBlockStatement.
	childInterpreter := self class new scope: blockScope.
	aBlockStatement body do: [ :stmt | stmt accept: childInterpreter ]