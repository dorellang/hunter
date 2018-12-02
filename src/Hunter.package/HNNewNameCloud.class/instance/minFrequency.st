accessing
minFrequency
	self flag: #todo. "maybe this causes failure if there are no terms"
	minFrequency ifNil: [
		minFrequency := Float infinity.
		terms do: [ :aTerm |
			minFrequency := minFrequency min: aTerm count
		]
	].
	^ minFrequency