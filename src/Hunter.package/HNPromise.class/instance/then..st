chaining
then: aBlock
	^ self then: aBlock catch: [ :x | HNPromise reject: x ] finally: nil