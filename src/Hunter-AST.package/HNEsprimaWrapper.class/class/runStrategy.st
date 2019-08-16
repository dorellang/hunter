private
runStrategy
	^ OSPlatform current isWindows
		ifTrue: [ HNLibCEsprimaWrapperRunStrategy new ]
		ifFalse: [ HNOSSubprocessEsprimaWrapperRunStrategy new ]