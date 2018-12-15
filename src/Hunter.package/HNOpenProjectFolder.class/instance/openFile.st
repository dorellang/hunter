opening
openFile
	| directory |
	directory := self askForProjectDirectoryIfNone: [ ^ self ].
	(self presenterForProjectLocatedAt: directory) openWithSpec