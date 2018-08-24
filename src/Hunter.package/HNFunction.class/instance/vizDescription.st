visualizations
vizDescription
	^ self name
		ifNil: [ 'Anonymous function' ]
		ifNotNil: [ :n | 'function ', n, '()' ]