visiting
visitUnaryExpression: aNode
	"TODO actual interpreting"
	^ self runtimeValueWithReferencedNamesOf: { aNode argument }