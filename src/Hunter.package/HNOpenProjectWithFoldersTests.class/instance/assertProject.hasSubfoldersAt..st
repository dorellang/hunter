tests
assertProject: project hasSubfoldersAt: aPath
	| currentFolder |
	currentFolder := project folder.
	aPath segments do: [ :each | 
		currentFolder := currentFolder subFolderAtBasename: each.
	]