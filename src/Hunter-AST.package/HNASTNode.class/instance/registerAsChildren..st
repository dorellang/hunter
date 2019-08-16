protected
registerAsChildren: childrenList
	childrenList withIndexDo: [ :child :i |
		"NOTE I don't fully understand the implications of treating nil nodes this way
			but this might be enough"
		child ifNotNil: [  
			child parent: self.
			child siblings: childrenList.
			child siblingIndex: i.
		]
	]