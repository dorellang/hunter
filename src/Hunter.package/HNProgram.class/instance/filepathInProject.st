accessing
filepathInProject
	"Return the filepath relative to the project root dir"
	filepathInProject ifNotNil: [ :f | ^ f ].
	^ filepathInProject := filepath ifNil: [ '<NO NAME>' ]
		ifNotNil: [ :f |
			(f asPath relativeTo: self project commonPathPrefix asPath) printWithDelimiter: $/
		]