opening
openLastDirectory
	| project |
	project := self readProjectLocatedAt: LastPath.

	(HNProjectBrowser on: [ :b | b project: project]) openWithSpec