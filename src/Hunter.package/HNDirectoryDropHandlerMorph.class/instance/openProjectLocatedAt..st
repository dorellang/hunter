events-processing
openProjectLocatedAt: aDirectory
	self removeMorph: contentsMorph.
	contentsMorph := (HNOpenProjectFolder new presenterForProjectLocatedAt: aDirectory) buildWithSpec.
	contentsMorph
		color: Color transparent;
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self addMorph: contentsMorph fullFrame: (0@0 corner: 1@1).
	