accessing
sortedAssociations
	^ (tableFrequency associations collect: [ :assoc |
		HNNameCloudTerm withWord: assoc key
			count: assoc value
			metaModels: (self tableObjects at: assoc key ifAbsent: #())
		])  reverseSortedAs: #count