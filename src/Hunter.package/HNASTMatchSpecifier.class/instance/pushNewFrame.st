stack
pushNewFrame
	currentFrame := HNASTMatchSpecifierFrame withSpecifier: self parent: currentFrame 