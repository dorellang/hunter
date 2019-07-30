running
runFor: aHunter astStreamDo: aBlock

	| commandWithArguments tmpOutputFileReference tmpOutputErrorsFileReference |
	tmpOutputFileReference := FileReference newTempFilePrefix: 'hunter-' suffix: '.json'. 
	tmpOutputErrorsFileReference := tmpOutputFileReference, 'errors'.
	
	commandWithArguments := String streamContents: [ :stream |
		stream nextPutAll: self nodejsCommand.
		(self esprimaWrapperArgumentsFor: aHunter) do: [:each | stream space; nextPutAll: each ].

		stream
			nextPutAll: ' > ';
			nextPutAll: tmpOutputFileReference pathString;
			nextPutAll: ' 2> ';
			nextPutAll: tmpOutputErrorsFileReference pathString.
 		].
	
	OSPlatform current runCommand: commandWithArguments.

	tmpOutputErrorsFileReference contents ifNotEmpty: [ :errorMessage | self error: errorMessage ].

	tmpOutputFileReference readStreamDo: aBlock.
	
	{ tmpOutputFileReference. tmpOutputErrorsFileReference } do: #ensureDelete.