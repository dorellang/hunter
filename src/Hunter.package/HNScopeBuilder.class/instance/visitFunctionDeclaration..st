visiting
visitFunctionDeclaration: aNode
	| bindingScope |
	"binding function name where the declaration belongs"
	bindingScope := scope bindingNonBlockScope.
	aNode id ifNotNil: [ :id |
		| functionMetaModel |
		functionMetaModel := self project metaModelFromNode: aNode.
		self handleIdentifierHoistDeclaration: id withScope: bindingScope value: functionMetaModel
	].
	self handleFunctionChildScopes: aNode