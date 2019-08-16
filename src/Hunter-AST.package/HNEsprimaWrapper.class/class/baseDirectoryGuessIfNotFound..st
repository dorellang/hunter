accessing
baseDirectoryGuessIfNotFound: aBlockClosure
	"Tries to guess that is the baseDirectory by looking up the esprima wrapper, which is the most important external file."

	| expectedPaths |
	expectedPaths := {
		FileLocator workingDirectory.
		IceLibgitRepository repositoriesLocation / #dorellang / #hunter }.
	expectedPaths 
		detect: [ :each | (HNEsprimaWrapper esprimaWrapperPathRelativeTo: each) exists ]
		ifFound: [ :each | ^ each ].

	^ aBlockClosure value