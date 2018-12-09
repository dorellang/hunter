*Hunter
hasStyleWithEdgesMoreImportantThan: aStyle
	self shownStyles do: [ :styleNameSym |
		| actualStyle |
		actualStyle := self styler styleNamed: styleNameSym.
		actualStyle isWithEdges ifTrue: [
			self flag: #todo. "Support inline styles. I think they don't have the priority selector"
			actualStyle priority > aStyle priority ifTrue: [ ^ true ]
		]
	].
	^ false