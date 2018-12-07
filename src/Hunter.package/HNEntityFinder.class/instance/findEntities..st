finding
findEntities: somePrograms
	self invalidParameters ifTrue: [ ^ #() ].
	^ somePrograms select: [ :aProgram | self doesMatch: aProgram ].