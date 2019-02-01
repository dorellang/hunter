visiting
visitFunction: aFunction
	^ aFunction name
		ifNil: [ 'Anonymous function' ]
		ifNotNil: [ :n | 'function ', n, '()' ]