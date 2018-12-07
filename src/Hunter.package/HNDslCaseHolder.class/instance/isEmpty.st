testing
isEmpty
	^ casesDict size = 1 and: [ (casesDict at: #'$:$') = {} ]