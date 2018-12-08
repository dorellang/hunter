converting
asString
	self flag: #todo.	"
		- ugly: create specialized subclasses?
		- remove dependency to Epicea
		"
	^ (self item isKindOf: HNFolder)
		ifTrue: [ 
			EpMorphFactory default
				rowWithAll:
					{self item basename asMorph.
					(self colorIconFor: self item) asMorph} ]
		ifFalse: [ self item basename ]