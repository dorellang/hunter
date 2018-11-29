incrementing
counterPlusPlus
	counter ifNil: [ counter := 0 ].
	^ counter := counter + 1