visiting
visitImportDeclaration: anImportDeclaration
	"For now we're just considering the local from the specifier as a variable declaration. TODO improve this"
	anImportDeclaration specifiers do: [:specifier |
		metaModel addVariable: (HNVariable new name: specifier local name)].