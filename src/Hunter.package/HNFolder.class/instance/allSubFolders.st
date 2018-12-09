accessing
allSubFolders
	| all |
	self flag: #warn. "returns itself... think is weird, but i am in a hurry"
	all := OrderedCollection new.
	self allSubFoldersDo: [ :subFolder | all add: subFolder ].
	^ all