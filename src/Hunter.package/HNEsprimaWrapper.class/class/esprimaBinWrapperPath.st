accessing
esprimaBinWrapperPath
	^ '/', ((HNUtil baseDirectory / 'esprima-bin-wrapper' / 'dist' / 'esprima-bin-wrapper.node.js')
		asPath printWithDelimiter: $/)