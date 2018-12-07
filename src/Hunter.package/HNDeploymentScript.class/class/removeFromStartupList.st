actions
removeFromStartupList
	self flag: #todo.
	[ "PhLStartupManager removeFromStartupList: self" ]
		on: NotFound 
		do: [ :e | "Not there, just ignore!" ]