accessing
innermostMetaModel
	^ innermostMetaModel ifNil: [ project metaModelFromNodeOrParent: node ]