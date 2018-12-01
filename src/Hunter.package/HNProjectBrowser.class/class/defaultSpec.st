specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :row |
			row add: #master.
			row addSplitter.
			row add: #detail.
		]; yourself
		