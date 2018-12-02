opening
openFile
	| project |
	project := self newProject.
	project ifNil: [ ^ self ].
	(HNProjectBrowser on: [ :b | b project: project]) openWithSpec