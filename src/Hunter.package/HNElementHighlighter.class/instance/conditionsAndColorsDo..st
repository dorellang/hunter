accessing
conditionsAndColorsDo: aBlock
	self conditionsAndColors do: [ :each | aBlock value: each key value: each value ]