specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :aRow |
			aRow add: #filepathLabel
		] height: 20;
		newRow: [ :aRow |
			aRow newColumn: [ :anotherRow |
			anotherRow newRow: #treeMap bottom: 0.7;
				addHSplitter;
				newRow: #code top: 0.3
			]
		] top: 20;
		yourself