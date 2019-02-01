events-processing
setInitialPanel
	contentsMorph := AlignmentMorph new
		borderWidth: 0;
		layoutInset: 0;
		cellInset: 2;
		color: Color transparent;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		wrapCentering: #center;
		listCentering: #center;
		cellPositioning: #center;
		yourself.
	contentsMorph addMorphBack: self initialMessageMorph.

	self addMorph: contentsMorph fullFrame: (0@0 corner: 1@1).
	