initialization
currentColor
	| rawColor |
	rawColor := Color blue.
	^ self isNotTransparent ifTrue: [ rawColor ] ifFalse: [ rawColor alpha: self transparency ]
