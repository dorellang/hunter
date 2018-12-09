testing
isStyleMethod: aCompiledMethod
	^ HNRTElementStylerPragmaHandler pragmaHandlerSelectors includes: aCompiledMethod selector.
