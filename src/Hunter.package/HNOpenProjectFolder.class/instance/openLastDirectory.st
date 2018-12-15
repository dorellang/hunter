opening
openLastDirectory
	| project |
	LastPath ifNil: [ ^self inform: 'These isn''t a last directory.' ].
	LastPath asFileReference exists ifNil: [ ^self inform: 'Last directory doesn''t exist anymore.' ].
	project := self readProjectLocatedAt: LastPath.

	(HNProjectBrowser on: [ :b | b project: project]) openWithSpec