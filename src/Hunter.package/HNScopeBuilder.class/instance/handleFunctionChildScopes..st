private
handleFunctionChildScopes: aNode
	| bindingScope functionArgScope functionBodyScope processor |
	
	bindingScope := scope bindingNonBlockScope.

	"taking care of arg body scope (parent of the body scope)"
	functionArgScope := HNScope withParent: bindingScope.
	self project linkNode: aNode toScope: functionArgScope.
	aNode params do: [ :param |
		self handleDeclarationLValue: param withScope: functionArgScope
	].

	"taking care of function body scope (which is different from the argument one)"
	functionBodyScope := HNScope withParent: functionArgScope.
	self project linkNode: aNode body toScope: functionBodyScope.
	processor := self species withScope: functionBodyScope.
	aNode body type  = 'BlockStatement' ifTrue: [
		aNode body body do: [ :stmt | stmt accept: processor ]
	] ifFalse: [ aNode body accept: processor ]