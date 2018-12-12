actions
handleQuitSession
	| shouldQuit |
	shouldQuit := UIManager default confirm: 'Quit Hunter: Are you sure?' translated.
	Smalltalk snapshot: false andQuit: shouldQuit.