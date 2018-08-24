visiting
visitConditionalExpression: aNode
	"TODO actual interpreting"
	^ self runtimeValueWithReferencedNamesOf: { aNode test. aNode consequent. aNode alternate }