visiting
visitSequenceExpression: aNode
	self matcher processNode: aNode.
	aNode expressions do: [ :expr | expr accept: self ]