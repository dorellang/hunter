tests
testFolders
	| project |
	project := Hunter new
		moduleOrScriptDirs: {self projectPathString};
		buildProject.
	self deny: project programs isEmpty.
	self deny: project folder isNil.
	self assert: (project folder programs collect: #basename) equals: #('index.js') asSet.
	self assert: (project folderAt: Path * 'dist' / 'c') basename equals: 'c'.
	self assert: (project folderAt: Path * 'lib' / 'd' / 'e' / 'f') basename equals: 'f'.
	self assert: (project programs detect: [ :p | p basename = 'b.js' ]) folder
		equals: (project folder subFolderAtBasename: 'dist').

	self assert: project folder parent isNil.
	self assert: (project folder subFolderAtBasename: 'dist') parent equals: project folder.
	self assert: (project folderAt: Path * 'lib' / 'd' / 'e' / 'f') parent
		equals: (project folderAt: Path * 'lib' / 'd' / 'e').

	self assert: project allFolders size equals: 7.