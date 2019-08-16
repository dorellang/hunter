testing
doesProcessProperty: aString
	^  aString ~= 'value' and: [super doesProcessProperty: aString ]