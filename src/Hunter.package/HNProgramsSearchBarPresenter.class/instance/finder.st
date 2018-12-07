accessing
finder
	(currentMode = #path) ifTrue: [ ^ HNProgramFinderByPath new ].
	(currentMode = #contents) ifTrue: [ ^ HNProgramFinderByContent new ].
	^ Error signal: 'Unknown mode in search bar'.
