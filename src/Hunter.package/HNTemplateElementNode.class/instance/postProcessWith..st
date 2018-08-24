serialization
postProcessWith: aDict
	| regexDict |
	super postProcessWith: aDict.
	regexDict := aDict at: 'value' ifAbsent: [ nil ].
	regexDict isNotNil ifTrue: [
		self value: (HNTemplateElementValueNode new
			cooked: (regexDict at: 'cooked' ifAbsent: [nil]);
			raw: (regexDict at: 'raw' ifAbsent: [nil])
		)
	].