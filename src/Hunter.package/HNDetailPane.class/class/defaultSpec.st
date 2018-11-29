specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: #treeMap bottom: 0.7;
		addHSplitter;
		newRow: #code top: 0.3;
		yourself