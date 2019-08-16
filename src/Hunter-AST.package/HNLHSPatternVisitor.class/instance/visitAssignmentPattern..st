visiting
visitAssignmentPattern: anAssignmentPattern
	"TODO handle default values. (Not trivial for destructuring assignments)"
	defaultExprFoundCallback cull: anAssignmentPattern right.
	anAssignmentPattern left accept: self.