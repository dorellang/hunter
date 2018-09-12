chaining
catch: catchBlock finally: finallyBlock
	^ self then: [ :x | x ] catch: catchBlock finally: finallyBlock