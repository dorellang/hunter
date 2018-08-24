visiting
visitCatchClause: aCatchClause
	| lhsVisitor |
	aCatchClause body type = 'BlockStatement' ifFalse: [
		Error signal: 'Expected BlockStatement in CatchClause body.'
	].
	
	"Collecting catch parameters after destructuring..."
	lhsVisitor := HNLHSPatternVisitor new identifierFoundCallback: [ :idNode |
		| catchVar |
		catchVar := HNVariable new
			name: idNode name;
			kind: 'error';
			definitionNode: idNode.
		metaModel addVariable: catchVar.
	].
	aCatchClause param accept: lhsVisitor.

	"Visiting body with new catch body block scope"
	aCatchClause body body do: [ :stmt | stmt accept: self ].