accessing
compiledCasesFromSpecBlock: specBlock
	self pushNewFrame.
	specBlock cull: self.
	^ self popFrame compiledCases