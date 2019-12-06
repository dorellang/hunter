running
esprimaWrapperArgumentsFor: aHunter
	^ Array streamContents: [ :stream |
		stream nextPut: (self pathArgumentFor: HNEsprimaWrapper esprimaWrapperPath pathString).

		aHunter scriptDirs ifNotEmpty: [ :aCollection |
			stream nextPut: '-s'.
			aCollection do: [:each | stream nextPut: (self pathArgumentFor: each) ].
		].
		aHunter moduleDirs ifNotEmpty: [ :aCollection |
			stream nextPut: '-m'.
			aCollection do: [:each | stream nextPut: (self pathArgumentFor: each) ].
		].
		aHunter moduleOrScriptDirs ifNotEmpty: [ :aCollection |
			stream nextPut: '-x'.
			aCollection do: [:each | stream nextPut: (self pathArgumentFor: each) ].
		] ]
