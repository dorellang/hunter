printing
printOn: aStream
	aStream << '"' << word << '" (' << self count << ' occurrences)'