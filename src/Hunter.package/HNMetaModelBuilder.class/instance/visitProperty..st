visiting
visitProperty: aProperty
	aProperty computed ifTrue: [ aProperty key accept: self ].
	aProperty value accept: self.