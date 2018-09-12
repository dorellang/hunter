instance creation
resolve: aValue
	^ self on: [ :resolve :reject | resolve value: aValue ]