serialization
postProcessWith: aDict
	| regexDict |
	super postProcessWith: aDict.
	regexDict := aDict at: 'regex' ifAbsent: [ nil ].
	regexDict isNotNil ifTrue: [
		self regex: (HNRegexNode new
			pattern: (regexDict at: 'pattern' ifAbsent: [nil]);
			flags: (regexDict at: 'flags' ifAbsent: [nil])
		)
	].
	self value: (aDict at: 'value' ifAbsent: [nil])