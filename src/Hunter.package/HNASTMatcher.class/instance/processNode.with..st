processing
processNode: aNode with: aBlock
	(self relevantCases select: [ :c | c matches: aNode ])
		do: [ :c | c process: aNode ];
		ifEmpty: [ aBlock value ]
		ifNotEmpty: [ :matched |
			| oldMatched |
			oldMatched := matched.
			casesMatched := matched.
			aBlock value.
			casesMatched := oldMatched
		]