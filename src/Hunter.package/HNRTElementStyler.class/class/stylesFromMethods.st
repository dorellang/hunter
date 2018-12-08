refreshing
stylesFromMethods
	| newStyles styleWithPriorityPragmas defaultStylePragma |
	"todo handle negative priority"

	newStyles := OrderedCollection new.

	defaultStylePragma := (Pragma allNamed: #defaultStyle from: HNRTElementStyler to: self) last.
	newStyles add: (
		HNRTElementMethodStyle new
			name: defaultStylePragma methodSelector allButLast asSymbol;
			methodSelector: defaultStylePragma methodSelector;
			priority: 0;
			isDefault: true
	).

	styleWithPriorityPragmas := Pragma allNamed: #styleWithPriority:
		from: HNRTElementStyler to: self
		sortedByArgument: 1.
	styleWithPriorityPragmas collect: [ :p | HNRTElementMethodStyle new
		name: p methodSelector allButLast asSymbol;
		methodSelector: p methodSelector;
		priority: p arguments first.
	] into: newStyles.

	^ newStyles