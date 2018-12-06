spec
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | 
			row
				newColumn: #foldersPane right: 0.7;
				addSplitter;
				newColumn: #viz left: 0.3;
				yourself ];
		newRow: #searchBar height: 25