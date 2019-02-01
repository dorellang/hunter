opening
readProjectLocatedAt: directory
	'Collecting AST from project files...' displayProgressFrom: 0 to: 2 during: [ :bar |
		| hunter |
		bar value: 0.
		hunter := Hunter new moduleOrScriptDirs: { directory pathString }.
		hunter buildAST.
		bar value: 1.
		bar title: 'Building meta-models...' translated.
		^ hunter buildProject
	].