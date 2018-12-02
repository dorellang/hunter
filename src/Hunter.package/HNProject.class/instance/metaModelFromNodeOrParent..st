accessing
metaModelFromNodeOrParent: aNode
	"little dirty hack to get the metamodel from a node... dunno the actual performance impact"
	nodeToMetaModelDict at: aNode ifAbsent: [
		aNode parent ifNil: [ ^ nil ].
		^ self metaModelFromNodeOrParent: aNode parent
	]