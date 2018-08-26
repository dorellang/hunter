accessing
arguments
	^ self variables select: [:var | var kind = 'arg']
