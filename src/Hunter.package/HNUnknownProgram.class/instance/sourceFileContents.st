accessing
sourceFileContents
	path asFileReference exists ifTrue: [
		[ ^ path asFileReference contents ]
			on: ZnIncomplete
			do: [] ].

	^ '// {1}: 
// "{2}"' format: { self shortDescription. self filepathInProject }