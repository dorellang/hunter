settings
developmentEnvironmentEnabled: aBoolean
	"
	self developmentEnvironmentEnabled: false
	"
	aBoolean 
		ifTrue: 
		[	self undoAll.  	
			self closeWindowsAndOpenDevelopmentEnvironment 
		]
		ifFalse: 
		[ 	self doAll. 
			self closeWindowsAndOpenFullScreen 
		].