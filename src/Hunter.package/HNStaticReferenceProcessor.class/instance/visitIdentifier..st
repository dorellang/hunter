visiting
visitIdentifier: aNode
	| referencedValue |
	[ referencedValue := aNode scope lookup: aNode name ]
		on: Error
		do: [
			"we've got an error or something... "
			"could happen in a nonsensical but syntactically ok js program"
		].
	referencedValue ifNotNil: [ :v |
		(v isKindOf: HNBasicMetaModel) ifTrue: [
			"TODO should add reference to current metamodel... but we're going to skip that now"
			v addReferenceFrom: program
		]
	]