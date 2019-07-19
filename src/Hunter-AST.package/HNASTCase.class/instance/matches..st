processing
matches: aNode
	^ conditions allSatisfy: [ :c | c value: aNode ]