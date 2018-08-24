visiting
visitSequenceExpression: aSequenceExpression
	aSequenceExpression expressions do: [ :expression | expression accept: self ]