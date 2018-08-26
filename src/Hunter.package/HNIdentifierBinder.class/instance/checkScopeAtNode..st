private
checkScopeAtNode: aNode
	scope := self project scopeFromExactNode: aNode ifNotFound: [ scope ]