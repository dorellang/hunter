tests
testBasic
	| programs fooProgramAST barProgramAST bazProgramAST fooProgram barProgram bazProgram |

	fooProgramAST := (HNProgramNode new body: {
		(HNCallExpressionNode new
			callee: (HNIdentifierNode new name: 'require');
			arguments: { (HNLiteralNode new value: './bar') }
		).
		(HNCallExpressionNode new
			callee: (HNIdentifierNode new name: 'require');
			arguments: { (HNLiteralNode new value: './baz') }
		).
	}).
	barProgramAST := (HNProgramNode new body: {
		HNImportDeclarationNode new specifiers: {}; source: (HNLiteralNode new value: './baz')
	}).
	bazProgramAST := (HNProgramNode new body: {}).
	
	
	fooProgramAST
		accept: (HNMetaModelBuilder withMetaModel: project programPath: '/home/project/foo.js').
	barProgramAST
		accept: (HNMetaModelBuilder withMetaModel: project programPath: '/home/project/bar.js').
	bazProgramAST
		accept: (HNMetaModelBuilder withMetaModel: project programPath: '/home/project/baz.js').
	programs := { fooProgramAST. barProgramAST. bazProgramAST }.
	programs do: [ :prg | prg accept: scopeBuilder ].
	programs do: [ :prg | prg accept: identifierBinder ].
	programs do: [ :prg | prg accept: importProcessor ].
	fooProgram := project programs first.
	barProgram := project programs second.
	bazProgram := project programs third.
	
	self assert: fooProgram resolvedDependencies
		equals: (OrderedCollection with: barProgram with: bazProgram).
	self assert: barProgram resolvedDependencies equals: (OrderedCollection with: bazProgram).
	self assert: bazProgram resolvedDependencies equals: (OrderedCollection new)