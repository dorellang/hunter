processing
processNode: aNode
	cases select: [ :c | c matches: aNode ] thenDo: [ :c | c process: aNode ]