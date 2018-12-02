as yet unclassified
updateLabel: aMetaModel
	| labelText |
	(aMetaModel isKindOf: HNSourceMetaModel) ifTrue: [
		labelText := aMetaModel program filepathInProject .
		filepathLabel label: labelText
	]