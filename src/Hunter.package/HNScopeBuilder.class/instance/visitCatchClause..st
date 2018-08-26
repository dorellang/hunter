visiting
visitCatchClause: aNode
	| processor catchScope |
	aNode body type = 'BlockStatement' ifFalse: [
		Error signal: 'Expected BlockStatement as CatchClause body'
	].
	catchScope := HNBlockScope withParent: scope.
	self project linkNode: aNode toScope: catchScope.
	processor := self species withScope: catchScope.
	processor handleDeclarationLValue: aNode param withScope: catchScope.
	aNode body body do: [:stmt | stmt accept: processor ].