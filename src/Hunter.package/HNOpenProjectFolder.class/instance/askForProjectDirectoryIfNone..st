opening
askForProjectDirectoryIfNone: aBlockClosure
	| directory |
	directory := UIManager default modalMorph theme
			chooseDirectoryIn: UIManager default modalMorph
			title: 'Please choose a JavaScript project directory' translated
			path: LastPath.
	directory ifNil: [ ^ aBlockClosure value ].
	LastPath := directory asPath.
	^ directory