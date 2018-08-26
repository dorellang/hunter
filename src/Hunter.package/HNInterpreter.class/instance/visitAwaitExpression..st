visiting
visitAwaitExpression: aNode
	"TODO actual interpreting"
	^ self runtimeValueWithReferencedNamesOf: { aNode argument }