visiting
visitYieldExpression: aNode
	"TODO actual interpreting"
	^ self runtimeValueWithReferencedNamesOf: { aNode argument }