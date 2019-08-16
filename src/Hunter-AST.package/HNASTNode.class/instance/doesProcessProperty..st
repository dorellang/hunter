testing
doesProcessProperty: aString
	^ self class instanceVariables, #(range) includes: aString asSymbol