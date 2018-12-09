*Hunter
hideStyleNamed: aSymbol
	| removed |
	removed := true.
	self shownStyles remove: aSymbol ifAbsent: [ removed := false ].
	removed ifTrue: [ (self styler styleNamed: aSymbol) performWhenRemovedWith: self ]