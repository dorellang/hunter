private
gradient: count basedOn: base
	| next |
	next := base lighter.
	^ (1 to: count) collect: [ :each | (base mixed: each / count with: next) slightlyLighter ]