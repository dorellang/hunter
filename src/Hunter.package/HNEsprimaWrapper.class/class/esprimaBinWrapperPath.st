accessing
esprimaBinWrapperPath
	^ (Hunter baseDirectory / 'esprima-bin-wrapper' / 'dist' / 'esprima-bin-wrapper.node.js')
		asPath pathString