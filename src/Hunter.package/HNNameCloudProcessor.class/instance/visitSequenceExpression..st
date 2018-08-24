visiting
visitSequenceExpression: aNode
	aNode expressions do: [ :exp | exp accept: self ]