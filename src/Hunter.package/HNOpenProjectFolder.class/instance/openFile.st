opening
openFile
	| project |
	project := self newProjectBrowser.
	(HNProjectBrowser on: [ :b | b project: project]) openWithSpec