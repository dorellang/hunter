testing
isContainedByFolder: aFolder
	| currentFolder |
	currentFolder := self folder.
	[
		currentFolder ifNil: [ ^ false ].
		(currentFolder = aFolder) ifTrue: [ ^ true ].
		currentFolder := currentFolder parent.
	] repeat.