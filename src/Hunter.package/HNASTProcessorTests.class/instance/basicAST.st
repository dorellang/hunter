helpers
basicAST
	^ (Hunter new stream: self basicASTJSON readStream;
		buildAST;
		astCollection) first