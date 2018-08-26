private
handleFunctionLikeNode: aNode addToMetaModelCb: addToMetaModelBlock
	| builder function |
	function := HNFunction new
		name: (aNode id ifNotNil: [:id | id name]);
		definitionNode: aNode.
	addToMetaModelBlock value: function.
	aNode params do: [ :param |
		| lhsVisitor |
		lhsVisitor := HNLHSPatternVisitor new identifierFoundCallback: [ :idNode |
			| variable |
			variable := HNVariable new
				name: idNode name;
				definitionNode: idNode.
			function addArgument: variable.
		].
		param accept: lhsVisitor.
	].
	builder := self species withMetaModel: function.

	"ugly hack not to create different block scope for body block statement"
	aNode body type = 'BlockStatement'
		ifTrue: [ aNode body body do: [ :stmt | stmt accept: builder ] ]
		ifFalse: [ aNode body accept: builder ].