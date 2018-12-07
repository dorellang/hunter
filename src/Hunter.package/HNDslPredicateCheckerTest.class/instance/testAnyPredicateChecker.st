tests
testAnyPredicateChecker
	self assert: (HNDslAnyPredicateChecker instance
		checkPredicates: { } against: self againstBlock
	) equals: false.
	self assert: (HNDslAnyPredicateChecker instance
		checkPredicates: self passingPredicates against: self againstBlock
	) equals: true.
	self assert: (HNDslAnyPredicateChecker instance
		checkPredicates: self failingPredicates against: self againstBlock
	) equals: false.
	self assert: (HNDslAnyPredicateChecker instance
		checkPredicates: self allPredicates against: self againstBlock
	) equals: true.