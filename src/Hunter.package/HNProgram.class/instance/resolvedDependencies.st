accessing
resolvedDependencies
	"Return a collection of programs that I depend on. I.e, in my source code, I do require('X'), and X is provided as a result of resolvedDependencies"
	^ resolvedDependencies ifNil: [
		resolvedDependencies := rawDependencies
			collect: [ :each | self resolveDependencyPath: each ]
	]