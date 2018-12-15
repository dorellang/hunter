instance creation
chooseDirectoryAndOpen
	
	| directory |
	directory := HNOpenProjectFolder new askForProjectDirectoryIfNone: [ ^ self ].
	contents morph openProjectLocatedAt: directory.