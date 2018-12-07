enumerating
forCasesWithType: type selector: selector do: aBlock
	| typeFragment selFragment key |
	typeFragment := type ifNil: [#'*'] 
		ifNotNil: [(self isKnownType: type) ifTrue: [ type ] ifFalse: [ #'$' ]].
	selFragment := selector ifNil: [#'*']
		ifNotNil: [(self isKnownSelector: selector) ifTrue: [ selector ] ifFalse: [ #'$' ]].
	key := typeFragment, #':', selFragment.
	(casesDict at: key ifAbsent: [ { } ]) do: [ :case | aBlock value: case ]