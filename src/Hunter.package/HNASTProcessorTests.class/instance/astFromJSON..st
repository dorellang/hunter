helpers
astFromJSON: json
	^ (Hunter new stream: json readStream;
		buildAST;
		astCollection) first