visiting
visitClass: aClass
	^ aClass name
		ifNil: [ 'Anonymous class' ]
		ifNotNil: [ :n | n, ' class' ]