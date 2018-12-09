refreshing
stylesFromMethods
	| newStyles |
	"todo handle negative priority"

	newStyles := OrderedCollection new.
	
	HNRTElementStylerPragmaHandler pragmaHandlerSelectors do: [ :aSelector |
		| aPragma |
		aPragma := (Pragma allNamed: aSelector from: self to: HNRTElementStyler)
			ifEmpty: nil ifNotEmpty: [ :col | col last ].
		aPragma ifNotNil: [
			| pragmaHandler |
			pragmaHandler := HNRTElementStylerPragmaHandler new pragma: aPragma.
			newStyles add: (
				pragmaHandler perform: aPragma selector withEnoughArguments: aPragma arguments
			)
		]
	].

	^ newStyles