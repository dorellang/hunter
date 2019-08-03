baselines
customProjectAttributes
	(Smalltalk os isMacOS or: [Smalltalk os isUnix])
		ifTrue: [ ^ #(#Unix) ].
	Smalltalk os isWindows
		ifTrue: [ ^ #(#Windows) ]