initialization
highlightElementsUsing: string
	"Highlight some elements depending on the entered string.
	String has to be a regular expression"
	view elements do: [ :elem |
		(self isElement: elem  relevantFor: string)
			ifTrue: [
				self rememberPreviousColorIfNecessaryFor: elem.
				elem trachelShape color: self currentColor
			]
			ifFalse: [ self restoreOriginalColorForElement: elem ]
	].
	view signalUpdate