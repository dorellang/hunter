visiting
visitCatchClause: aCatchClause
	| blockScope childInterpreter |
	blockScope := scope metaModelFromNode: aCatchClause.
	childInterpreter := self class new scope: blockScope.
	aCatchClause body body do: [ :stmt | stmt accept: childInterpreter ]