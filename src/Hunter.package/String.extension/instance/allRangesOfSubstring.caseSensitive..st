*Hunter
allRangesOfSubstring: aSubstring caseSensitive: caseSensitive 
	"'Ab cd ef Ab cd' allRangesOfSubstring: 'cd' >>> {(4 to: 5). (13 to: 14)}"
	"'Ab cd ef Ab cd' allRangesOfSubstring: 'zz' >>> #()"
	
	^ Array streamContents: [:s | | start subSize |
		start := 1.
		subSize := aSubstring size.
		[start isZero]
			whileFalse: [ start := self findString: aSubstring startingAt: start caseSensitive: caseSensitive.
				start > 0 
					ifTrue: [s nextPut: (start to: start + subSize - 1).
						start := start + subSize]]]