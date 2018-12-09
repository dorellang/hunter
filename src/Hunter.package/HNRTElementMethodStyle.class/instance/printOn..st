printing
printOn: aStream
	aStream << 'HNRTElementMethodStyle(#' << name <<
		', priority=' << self priority << ', isWithEdges=' << isWithEdges asString << ')'