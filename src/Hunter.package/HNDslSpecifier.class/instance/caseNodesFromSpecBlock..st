accessing
caseNodesFromSpecBlock: specBlock
	self pushNewFrame.
	specBlock cull: self.
	^ self popFrame caseNodes