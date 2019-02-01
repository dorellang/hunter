events-processing
handleDropFiles: anEvent
	"Handle a drop from the OS."

	| aFileReference |	
	anEvent wasHandled: true.
	anEvent contents = 1 ifFalse: [ ^self inform: 'Please drop only 1 directory.' ].
	aFileReference := FileReference requestDropReference: 1.
	aFileReference isDirectory ifFalse: [ ^self inform: 'Please drop a directory.' ].
	self openProjectLocatedAt: aFileReference