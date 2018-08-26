visiting
visitBinaryExpression: aNode
	"TODO actual interpreting"
	^ self runtimeValueWithReferencedNamesOf: { aNode left. aNode right }