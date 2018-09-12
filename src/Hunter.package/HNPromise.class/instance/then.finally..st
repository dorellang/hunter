chaining
then: thenBlock finally: finallyBlock
	^ self then: thenBlock catch: [ :x | HNPromise reject: x ] finally: finallyBlock