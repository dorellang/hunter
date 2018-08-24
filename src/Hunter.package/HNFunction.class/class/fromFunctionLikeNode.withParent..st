instance creation
fromFunctionLikeNode: aFunctionLikeNode withParent: aMetaModel
	| args builder function |
	args := aFunctionLikeNode params flatCollect: [ :param |
		| lhsVisitor |
		lhsVisitor := HNLHSPatternVisitor new kind: 'arg'.
		param accept: lhsVisitor.
		lhsVisitor variables
	].
	function := self new parent: aMetaModel; definitionNode: aFunctionLikeNode.
	args do: [ :arg | function addArgument: arg ].
	builder := HNMetaModelBuilder new scope: function.
	aFunctionLikeNode body accept: builder.
	^ function