testing
isStyleMethod: aCompiledMethod
	aCompiledMethod pragmas do: [ :aPragma |
		(HNRTElementStylerPragmaHandler pragmaHandlerSelectors
			includes: aPragma selector)
			ifTrue: [ ^ true ]
	].
	^ false
