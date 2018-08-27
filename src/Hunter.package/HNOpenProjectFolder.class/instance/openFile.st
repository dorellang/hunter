opening
openFile
	| directory project |
	directory := UIManager default modalMorph theme
			chooseDirectoryIn: UIManager default modalMorph
			title: 'Choose JavaScript directory to open in the workspace' translated
			path: LastPath.
	directory ifNil: [ ^ self ].
	LastPath := directory asPath.

	'Collecting AST from project files...' displayProgressFrom: 0 to: 2 during: [ :bar |
		| hunter results |
		bar value: 0.
		hunter := Hunter new moduleDirs: { directory pathString }.
		results := hunter buildAST.
		bar value: 1.
		bar title: 'Building meta-models...'.
		project := hunter buildMetamodelFromResultList: results.
		project inspect
	].