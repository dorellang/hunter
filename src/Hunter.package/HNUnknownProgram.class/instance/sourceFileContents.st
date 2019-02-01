accessing
sourceFileContents
	^ path asFileReference exists
		ifTrue: [ path asFileReference contents ]
		ifFalse: [ '// ', self shortDescription ]