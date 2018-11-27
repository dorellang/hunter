accessing
allFolders
	| folders |
	folders := OrderedCollection new.
	self folder collectAllSubFoldersInto: folders.
	^ folders