stack
pushNewFrame
	currentFrame := HNDslSpecifierFrame withSpecifier: self parent: currentFrame 