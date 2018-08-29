visiting
visitArrayPattern: aNode
	self matcher processNode: aNode.
	aNode elements do: [ :el | el ifNotNil: [ :e | e accept: self ] ]