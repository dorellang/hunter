building
composeDetailOn: aPresentation
	| anAccumulator |
	anAccumulator := GLMAccumulator new.
	anAccumulator
		show: [ :a | 
			a title: [ :x | x name ].
			self composeDetailTabOn: a ].
	aPresentation custom: anAccumulator