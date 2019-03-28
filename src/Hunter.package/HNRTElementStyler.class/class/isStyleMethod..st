testing
isStyleMethod: aCompiledMethod
	^ aCompiledMethod pragmas anySatisfy: [ :aPragma |
		HNRTElementStylerPragmaHandler pragmaHandlerSelectors includes: aPragma selector ]
