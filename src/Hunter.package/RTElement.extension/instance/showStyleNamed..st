*Hunter
showStyleNamed: aSymbol
	| added |
	added := (self shownStyles includes: aSymbol) not.
	self shownStyles add: aSymbol.
	added ifTrue: [ (self styler styleNamed: aSymbol) performWhenAddedWith: self ]