refreshing
updateLabel: aMetaModel
	self flag: #todo.
	(aMetaModel respondsTo: #program)
		ifTrue: [ filepathLabel label: aMetaModel program filepathInProject ]