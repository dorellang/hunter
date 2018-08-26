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
		| results |
		bar value: 0.
		results := HNJSONLoader loadFromScriptDirs: {} andModuleDirs: { directory pathString }.
		bar value: 1.
		bar title: 'Building meta-models...'.
		project := HNJSONLoader buildMetamodelFromResultList: results.
		project inspect
	].