instance creation
initializeWidgets
	self title: 'Hunter'.

	mainMenu := self newMainMenu.
	mainMenu applyTo: self.

	contents := HNDirectoryDropHandlerMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		asSpecAdapter