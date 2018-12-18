accessing
filepathInProject
	"Return the filepath relative to the project root dir"
	filepathInProject ifNotNil: [ :f | ^ f ].
	self flag: #todo. "Remove ifNil: too?"
	^ filepathInProject := filepath ifNil: [ '<NO NAME>' ]
		ifNotNil: [ :f |
			(f asPath relativeTo: self project commonPathPrefix asPath) pathString
		]