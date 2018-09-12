chaining
catch: aBlock
	^ self then: [ :x | x ] catch: aBlock finally: nil