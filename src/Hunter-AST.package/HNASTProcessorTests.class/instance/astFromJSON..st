helpers
astFromJSON: json
	^ (HNEsprimaWrapper parseResultsFrom: json readStream) first result