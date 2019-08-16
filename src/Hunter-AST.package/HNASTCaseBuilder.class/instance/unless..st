public
unless: predicate
	conditions add: [ :n | (predicate value: n) not ]