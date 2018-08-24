tests
testExportDefaultClassDeclaration
	| ast  |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNExportDefaultDeclarationNode new declaration: (
				HNClassDeclarationNode new
					id: (HNIdentifierNode new name: 'Klass');
					body: (HNClassBodyNode new body: {});
				superClass: nil	
			)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram classes size equals: 1.