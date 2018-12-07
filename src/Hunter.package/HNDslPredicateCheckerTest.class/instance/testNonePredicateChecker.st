tests
testNonePredicateChecker
	self assert: (HNDslNonePredicateChecker instance
		checkPredicates: { } against: self againstBlock
	) equals: true.
	self assert: (HNDslNonePredicateChecker instance
		checkPredicates: self passingPredicates against: self againstBlock
	) equals: false.
	self assert: (HNDslNonePredicateChecker instance
		checkPredicates: self failingPredicates against: self againstBlock
	) equals: true.
	self assert: (HNDslNonePredicateChecker instance
		checkPredicates: self allPredicates against: self againstBlock
	) equals: false.