opening
openFile
	| project |
	project := self newProject.
	(HNProjectBrowser on: [ :b | b project: project]) openWithSpec
	"project inspectWithLabel: 'Hunter - ', project commonPathPrefix"
