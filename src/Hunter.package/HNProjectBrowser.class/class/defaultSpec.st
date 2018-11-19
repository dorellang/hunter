specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :row |
			row add: #master.
			row add: #detail
		]; yourself
		