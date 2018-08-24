visiting
visitExportNamedDeclaration: anExportNamedDeclaration
	anExportNamedDeclaration declaration isNotNil ifTrue: [
		anExportNamedDeclaration declaration accept: self
	].
