private - chaining
hnPromiseThen: thenBlock catch: catchBlock
	^ self then: thenBlock catch: catchBlock finally: nil