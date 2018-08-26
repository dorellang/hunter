visiting
visitLiteral: aLiteral
	^ HNValue new computedValue: (aLiteral regex ifNil: [ aLiteral value ]).