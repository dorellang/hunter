public
unless: predicate
	caseConfigurator addPredicate: [ :n :ctx | (predicate hnCull: n cull: ctx) not ]