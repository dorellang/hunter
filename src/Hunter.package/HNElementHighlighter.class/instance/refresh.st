refreshing
refresh
	self flag: #todo. "The Spec with DataBindings initialization process executes this method before having the view."
	view ifNil: [ ^self ]. 
	view elements do: [ :each | self refreshElement: each ].
	view signalUpdate