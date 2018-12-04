accessing
conditionsAndColorsDo: aBlock
	conditionsAndColors do: [ :each | aBlock value: each key value: each value ]