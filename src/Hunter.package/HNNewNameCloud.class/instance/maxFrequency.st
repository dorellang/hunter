accessing
maxFrequency
	self flag: #todo. "maybe this causes failure if there are no terms"
	maxFrequency ifNil: [
		maxFrequency := Float negativeInfinity.
		terms do: [ :aTerm |
			maxFrequency := maxFrequency max: aTerm count
		]
	].
	^ maxFrequency