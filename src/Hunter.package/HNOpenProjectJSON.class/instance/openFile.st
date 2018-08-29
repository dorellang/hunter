opening
openFile
	| file project |
	file := UIManager default modalMorph theme
			chooseFullFileNameIn: UIManager default modalMorph
			title: 'Choose file to open in the workspace' translated
			patterns: #('json' '*json' '*.json')
			path: LastPath
			preview: false
			"chooseFullFileNameMatching: #('json' '*json' '*.json')
			label: ".
	file ifNil: [ ^ self ].
	LastPath := file asPath parent.

	'Loading AST from JSON file...' displayProgressFrom: 0 to: 2 during: [ :bar |
		| hunter |
		bar value: 0.
		hunter := Hunter new jsonFile: file.
		hunter buildAST.
		bar value: 1.
		bar title: 'Building meta-models...'.
		project := hunter buildProject.
		project inspect
	].