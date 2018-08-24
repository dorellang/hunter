initialization
setUp
	project := HNProject new.
	metaModelBuilder := HNMetaModelBuilder withMetaModel: project.
	rootScope := HNRootScope withProject: project.
	scopeBuilder := HNScopeBuilder withScope: rootScope.
	identifierBinder := HNIdentifierBinder withProject: project.
	importProcessor := HNImportProcessor withProject: project