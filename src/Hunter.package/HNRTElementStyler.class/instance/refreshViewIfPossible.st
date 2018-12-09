refreshing
refreshViewIfPossible
	view ifNotNil: [ 
		view reapplyStyles.
		view signalUpdate
	]