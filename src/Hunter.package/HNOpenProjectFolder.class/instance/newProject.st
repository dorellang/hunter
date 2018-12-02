opening
newProject
	| directory project |
	directory := UIManager default modalMorph theme
			chooseDirectoryIn: UIManager default modalMorph
			title: 'Choose JavaScript directory to open in the workspace' translated
			path: LastPath.
	directory ifNil: [ ^ nil ].
	LastPath := directory asPath.

	'Collecting AST from project files...' displayProgressFrom: 0 to: 2 during: [ :bar |
		| hunter |
		bar value: 0.
		hunter := Hunter new moduleOrScriptDirs: { directory pathString }.
		hunter buildAST.
		bar value: 1.
		bar title: 'Building meta-models...' translated.
		project := hunter buildProject.
		
		^ project
	].