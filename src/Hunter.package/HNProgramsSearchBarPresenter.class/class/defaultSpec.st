specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :row | 
			row
				add: #searchTextInput origin: 0@0 corner: 1@1;
				add: #searchInContentsModeRadio origin: 0@0 corner: 1@1 offsetOrigin: 0@0 offsetCorner: 80@0;
				add: #searchInPathModeRadio origin: 0@0 corner: 1@1 offsetOrigin: 0@0 offsetCorner: 50@0;
				yourself ];
		yourself