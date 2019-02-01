accessing
newHScrollbar
	"Answer a new horizontal scrollbar."

	^ HNCodeScrollBar new
		model: self;
		setValueSelector: #hScrollbarValue:;
		yourself