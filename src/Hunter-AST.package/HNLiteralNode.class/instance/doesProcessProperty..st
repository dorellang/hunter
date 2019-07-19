serialization
doesProcessProperty: aString
	^  aString ~= 'value' and: [ aString ~= 'regex' and: [super doesProcessProperty: aString ] ]
	
