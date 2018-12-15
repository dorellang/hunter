building
buildProject
	| project |
	parseResultCollection ifNil: [ self buildAST ].
	project := HNProject new.

	parseResultCollection
		do: [ :each | self processParseResult: each in: project. ] 
		displayingProgress: [ :each | 'Processing AST of ', each path asPath basename ].

	project resolveSuperclassRelations.
	project resolveFolders.
	
	^ project