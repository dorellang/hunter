visiting
visitBlockStatement: aNode
	aNode body do: [ :item | item accept: self ]