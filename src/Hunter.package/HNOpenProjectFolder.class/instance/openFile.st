opening
openFile
	| project |
	project := self newProjectBrowser.
	HNProjectBrowser openOn: project
	"project inspectWithLabel: 'Hunter - ', project commonPathPrefix"