converting
asString
	| theFolder isHighlighted |
	self flag: #todo. "FIX"
	isHighlighted := self model projectSearchResultDataBinding value ifNil: [ false ] ifNotNil: [:c | c includes: self item].

	self flag: #todo.	"
		- ugly: create specialized subclasses?
		- remove dependency to Epicea
		"
	theFolder := (self item isKindOf: HNFolder)
		ifFalse: [ self item folder ]
		ifTrue: [ self item ].
	^ EpMorphFactory default rowWithAll: {
		self item basename asMorph backgroundColor: (isHighlighted
			ifTrue: [ HNColorTheme searchHighlightColor ]
			ifFalse: [ Color transparent ]).
		(self colorIconFor: theFolder) asMorph
		}