processing
processNode: aNode with: aBlock
	self pushNewFrame.
	currentFrame matchCasesFor: aNode.
	currentFrame casesMatched do: [ :c | c process: aNode ].
	aBlock value.
	self popFrame.