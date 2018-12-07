tests
testAllPredicateChecker
	self assert: (HNDslAllPredicateChecker instance
		checkPredicates: { } against: self againstBlock
	) equals: true.
	self assert: (HNDslAllPredicateChecker instance
		checkPredicates: self passingPredicates against: self againstBlock
	) equals: true.
	self assert: (HNDslAllPredicateChecker instance
		checkPredicates: self failingPredicates against: self againstBlock
	) equals: false.
	self assert: (HNDslAllPredicateChecker instance
		checkPredicates: self allPredicates against: self againstBlock
	) equals: false.