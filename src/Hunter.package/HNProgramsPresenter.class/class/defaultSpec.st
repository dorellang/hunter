spec
defaultSpec
	^ SpecRowLayout composed
		newColumn: #foldersPane right: 0.7;
		addSplitter;
		newColumn: #viz left: 0.3;
		yourself