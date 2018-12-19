accessing
baseDirectoryGuessIfNotFound: aBlockClosure
	"Tries to guess that is the baseDirectory by looking up the esprima wrapper, which is the most important external file."

	| expectedPaths |
	expectedPaths := {
		FileLocator workingDirectory.
		IceLibgitRepository repositoriesLocation / #dorellang / #hunter }.
	expectedPaths do: [ :each | 
		(HNEsprimaWrapper esprimaBinWrapperPathRelativeTo: each) exists ifTrue: [ ^ each ] ].

	^ aBlockClosure value