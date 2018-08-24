private
handleFunctionLikeNode: aNode
	self handleFunctionLikeNode: aNode addToMetaModelCb: [ :f | metaModel addFunction: f ]