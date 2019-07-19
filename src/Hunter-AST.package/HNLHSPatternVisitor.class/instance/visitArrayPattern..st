visiting
visitArrayPattern: anArrayPattern
	(anArrayPattern elements reject: #isNil) do: [ :element | element accept: self ].