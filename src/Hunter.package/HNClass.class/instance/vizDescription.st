visualizations
vizDescription
	^ self name
		ifNil: [ 'Anonymous class' ]
		ifNotNil: [ :n | n, ' class' ]