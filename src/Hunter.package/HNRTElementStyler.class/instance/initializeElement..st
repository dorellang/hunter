hooks
initializeElement: element
	"NOTE: elements should be from one view only. Keep one styler per view!"
	view := element view.
	element styler: self.
	element applyStyles