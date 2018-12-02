specs
defaultSpec
	^ SpecRowLayout composed
	 	newColumn: #master right: 0.4;
		addSplitter;
		newColumn: #detail left: 0.6;
		yourself