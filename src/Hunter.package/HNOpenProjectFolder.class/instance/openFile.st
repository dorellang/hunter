opening
openFile
	| directory project |
	directory := self askForProjectDirectoryIfNone: [ ^ self ].
	project := self readProjectLocatedAt: directory.

	(HNProjectBrowser on: [ :b | b project: project]) openWithSpec