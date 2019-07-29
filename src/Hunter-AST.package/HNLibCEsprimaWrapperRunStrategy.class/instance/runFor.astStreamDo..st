running
runFor: aHunter astStreamDo: aBlock

	| commandAsString tmpOutputFileReference tmpOutputErrorsFileReference |
	tmpOutputFileReference := FileReference newTempFilePrefix: 'hunter-' suffix: '.json'. 
	tmpOutputErrorsFileReference := tmpOutputFileReference, 'errors'.
	
	commandAsString := String streamContents: [ :stream |
		stream nextPutAll: self commandForNodejs.
		(self argumentsFor: aHunter) do: [:each | stream space; nextPutAll: each ].
			
		stream
			nextPutAll: ' > ';
			nextPutAll: tmpOutputFileReference pathString;
			nextPutAll: ' 2> ';
			nextPutAll: tmpOutputErrorsFileReference pathString.
 		].
	
	 OSPlatform current runCommand: commandAsString.

	tmpOutputErrorsFileReference contents ifNotEmpty: [ :errorMessage | self error: errorMessage ].

	tmpOutputFileReference readStreamDo: aBlock.
	
	{ tmpOutputFileReference. tmpOutputErrorsFileReference } do: #ensureDelete.