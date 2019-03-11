opening
openLastDirectory
	LastPath ifNil: [ ^ self inform: 'These isn''t a last directory.' ].
	LastPath asFileReference exists
		ifNil: [ ^ self inform: 'Last directory doesn''t exist anymore.' ].
	(self presenterForProjectLocatedAt: LastPath) openWithSpec