converting
asString
	| theFolder |
	self flag: #todo.	"
		- ugly: create specialized subclasses?
		- remove dependency to Epicea
		"
	theFolder := (self item isKindOf: HNFolder)
		ifFalse: [ self item folder ]
		ifTrue: [ self item ].
	^ EpMorphFactory default
		rowWithAll:
			{self item basename asMorph.
			(self colorIconFor: theFolder) asMorph}