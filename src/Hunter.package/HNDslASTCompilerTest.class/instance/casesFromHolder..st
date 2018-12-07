helpers
casesFromHolder: aCaseHolder
	| cases |
	cases := Set new.
	aCaseHolder forCasesWithType: nil selector: nil do: [ :case | cases add: case ].
	^ cases asArray sorted: [ :x :y | x priority <= y priority ]