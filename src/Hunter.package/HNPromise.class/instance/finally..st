chaining
finally: aBlock
	^ self then: [ :x | x ] catch: [ :x | HNPromise reject: x ] finally: aBlock