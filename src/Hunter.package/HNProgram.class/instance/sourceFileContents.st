accessing
sourceFileContents
	^ sourceFileContents ifNil: [ sourceFileContents := self filepath asFileReference contents ]