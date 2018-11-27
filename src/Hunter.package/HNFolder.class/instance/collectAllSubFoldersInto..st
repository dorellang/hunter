enumerating
collectAllSubFoldersInto: aCollection 
	aCollection add: self.
	self subFolders do: [ :aFolder |
		aFolder collectAllSubFoldersInto: aCollection
	]