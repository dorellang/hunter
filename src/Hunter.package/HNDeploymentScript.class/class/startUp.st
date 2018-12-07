system startup
startUp
	self isDeployed
		ifTrue: [ self closeWindowsAndOpenFullScreen ]