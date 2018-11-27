algorithm
lengthOf: anEdge

	^ lengths at: anEdge ifAbsent: [ ^ length rtValue: anEdge ] 