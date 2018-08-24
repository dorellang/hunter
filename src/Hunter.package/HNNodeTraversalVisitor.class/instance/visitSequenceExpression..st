visiting
visitSequenceExpression: aNode
	aNode expressions do: [ :expr | expr accept: self ]