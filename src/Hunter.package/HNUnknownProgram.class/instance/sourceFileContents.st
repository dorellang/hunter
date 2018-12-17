accessing
sourceFileContents
	^ path asFileReference exists
		ifTrue: [ path asFileReference contents ]
		ifFalse: [ '// File not found' ]