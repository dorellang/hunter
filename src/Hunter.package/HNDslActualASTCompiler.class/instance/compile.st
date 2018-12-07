compiling
compile
	| compiled |
	compiled := node accept: self.
	self handleDescendantSubcasesForCompiledCase: compiled.
	^ compiled