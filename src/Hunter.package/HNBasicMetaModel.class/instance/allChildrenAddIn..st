accessing
allChildrenAddIn: visitedElements
	"Fill the argument, visitedElements, with all the elements that I visited"

	"Do nothing if I am already visited"
	(visitedElements includes: self) ifTrue: [ ^ self ].
	
	"Else I add myself, and we do the recursion"
	visitedElements add: self.
	self children do: [ :c | c allChildrenAddIn: visitedElements ]