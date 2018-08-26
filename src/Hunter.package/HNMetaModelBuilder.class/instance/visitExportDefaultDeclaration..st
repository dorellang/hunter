visiting
visitExportDefaultDeclaration: anExportDeclaration
	| declaration |
	declaration := anExportDeclaration declaration.
	declaration accept: self