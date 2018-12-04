hooks
elementHighlighter
	^ elementHighlighter ifNil: [ elementHighlighter := self newElementHighlighter ]