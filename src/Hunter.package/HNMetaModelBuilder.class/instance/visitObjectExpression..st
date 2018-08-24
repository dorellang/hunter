visiting
visitObjectExpression: anObjectExpression
	anObjectExpression properties do: [ :property | property accept: self ]