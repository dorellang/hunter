running
setUp
	project := HNProject new.
	metaModelBuilder := HNMetaModelBuilder withMetaModel: project.
	rootScope := HNRootScope withProject: project.
	scopeProcessor := HNScopeBuilder withScope: rootScope.