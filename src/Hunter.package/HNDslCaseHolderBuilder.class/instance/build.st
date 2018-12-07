building
build
	| holderDict |
	holderDict := Dictionary new.
	types addAll: {#'$'. #'*'}.
	selectors addAll: {#'$'. #'*'}.
	types do: [ :type |
		selectors do: [ :selector |
			| cases key casesArray |
			cases := Set new.
			({types. selector} includes: #'*') ifFalse: [
				({types. selector} includes: #'$')
					ifFalse: [ cases addAll: (self casesWithType: #'$' selector: #'$') ].
				type ~= #'$'
					ifTrue: [ cases addAll: (self casesWithType: type selector: #'$') ].
				selector ~= #'$'
					ifTrue: [ cases addAll: (self casesWithType: #'$' selector: selector) ].
			].
			cases addAll: (self casesWithType: type selector: selector).
			cases ifNotEmpty: [
				casesArray := cases asArray sorted: [ :a :b | a priority <= b priority ].
				key := self keyForType: type selector: selector.
				holderDict at: key put: casesArray
			].
		]
	].
	types removeAll: {#'$'. #'*'}.
	selectors removeAll: {#'$'. #'*'}.
	holderDict at: #'$:$' put: ((self casesWithType: #'$' selector: #'$')).
	^ HNDslCaseHolder casesDict: holderDict knownTypes: types knownSelectors: selectors.