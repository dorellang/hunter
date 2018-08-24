tests
testImportDeclarationWithDefaultSpecifier
	| ast |
	ast := (HNProgramNode new
		sourceType: 'module';
		body: {
			(HNImportDeclarationNode new
				source: (HNLiteralNode new value: 'foo'; raw: '"foo"');
				specifiers: {
					(HNImportDefaultSpecifierNode new
						local: (HNIdentifierNode new name: 'hola')).
					(HNImportNamespaceSpecifierNode new
						local: (HNIdentifierNode new name: 'foo')).
					(HNImportSpecifierNode new
						local: (HNIdentifierNode new name: 'chao');
						imported: (HNIdentifierNode new name: 'byebye')).
				}
			)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram variables size equals: 3.
	self assert: (self defaultProgram variables at: 1) name equals: 'hola'.
	self assert: (self defaultProgram variables at: 2) name equals: 'foo'.
	self assert: (self defaultProgram variables at: 3) name equals: 'chao'.
