visiting
visitMemberExpression: aNode
	"TODO actual interpreting"
	^ aNode computed
		ifTrue: [ self runtimeValueWithReferencedNamesOf: { aNode object. aNode property } ]
		ifFalse: [ self runtimeValueWithReferencedNamesOf: { aNode object. } ]
	