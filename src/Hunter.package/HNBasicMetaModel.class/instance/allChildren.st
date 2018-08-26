accessing
allChildren
	"Return the list of all children below me"
	| result |
	result := OrderedCollection new.
	self allChildrenAddIn: result.
	^ result asSet