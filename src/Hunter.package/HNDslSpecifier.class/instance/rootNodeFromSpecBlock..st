accessing
rootNodeFromSpecBlock: specBlock
	specBlock cull: self.
	^ currentFrame rootNode