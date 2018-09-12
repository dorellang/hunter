instance creation
reject: aValue
	^ self on: [ :resolve :reject | reject value: aValue ]