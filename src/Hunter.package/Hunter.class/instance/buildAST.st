building
buildAST
	parseResultCollection := stream
		ifNotNil: [
			HNEsprimaWrapper parseResultsFromStream: stream ]
		ifNil: [
			HNEsprimaWrapper parseResultsFromHunter: self ]