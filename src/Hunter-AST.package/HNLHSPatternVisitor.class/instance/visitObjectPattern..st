visiting
visitObjectPattern: anObjectPattern
	anObjectPattern properties do: [ :property | property value accept: self ].