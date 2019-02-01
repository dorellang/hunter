accessing
newVScrollbar
	"Answer a new vertical scrollbar."

	^ HNCodeScrollBar new
		model: self;
		setValueSelector: #vScrollbarValue:;
		yourself