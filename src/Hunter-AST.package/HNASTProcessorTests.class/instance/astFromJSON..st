helpers
astFromJSON: json
	^ (HNEsprimaWrapper parseResultsFromStream: json readStream) first result