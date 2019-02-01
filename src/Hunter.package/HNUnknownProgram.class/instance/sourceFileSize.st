accessing
sourceFileSize
	^ path asFileReference exists
		ifTrue: [ path asFileReference size ]
		ifFalse: [ super sourceFileSize ]