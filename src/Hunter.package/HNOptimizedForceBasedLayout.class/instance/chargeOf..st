algorithm
chargeOf: aNode 

	^ charges at: aNode ifAbsent: [ ^ charge rtValue: aNode ] 