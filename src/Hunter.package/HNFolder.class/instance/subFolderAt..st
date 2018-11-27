accessing
subFolderAt: aRelativePath
	| currentFolder |
	currentFolder := self.
	aRelativePath segments do: [ :each | 
		currentFolder := currentFolder subFolderAtBasename: each.
	].
	^ currentFolder