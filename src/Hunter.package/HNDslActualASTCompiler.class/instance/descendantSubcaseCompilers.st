accessing
descendantSubcaseCompilers
	descendantSubcaseCompilers ifNil: [ descendantSubcaseCompilers := OrderedCollection new ].
	^ descendantSubcaseCompilers