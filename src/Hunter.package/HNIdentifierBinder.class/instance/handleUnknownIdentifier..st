private
handleUnknownIdentifier: aNode	
	"For now just assuming it's a global taken from somewhere"
	| globalScope |
	globalScope := scope globalScope.
	aNode scope: globalScope.
	globalScope declareAndMark: aNode name
