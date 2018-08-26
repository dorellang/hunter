visiting
visitArrayPattern: aNode
	self checkScopeAtNode: aNode.
	aNode elements do: [ :el | el ifNotNil: [ :e | e accept: self ] ]