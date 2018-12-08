specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :aRow |
			aRow add: #filepathLabel
		] height: 20;
		newRow: [ :aRow |
			aRow newColumn: [ :anotherRow |
			anotherRow newRow: #treeMap bottom: 0.8;
				addHSplitter;
				newRow: #code top: 0.2
			]
		] top: 20;
		yourself