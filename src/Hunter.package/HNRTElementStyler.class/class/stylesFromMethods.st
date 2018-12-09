refreshing
stylesFromMethods
	| newStyles |
	"todo handle negative priority"

	newStyles := OrderedCollection new.
	
	HNRTElementStylerPragmaHandler pragmaHandlerSelectors do: [ :aSelector |
		| somePragmas |
		somePragmas := Pragma allNamed: aSelector from: self to: HNRTElementStyler.
		somePragmas do: [ :aPragma |
			| pragmaHandler |
			pragmaHandler := HNRTElementStylerPragmaHandler new pragma: aPragma.
			newStyles add: (
				pragmaHandler perform: aPragma selector withEnoughArguments: aPragma arguments
			)
		]
	].

	^ newStyles sorted: [ :a :b | a priority < b priority ]