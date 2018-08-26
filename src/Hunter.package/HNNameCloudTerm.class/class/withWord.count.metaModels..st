instance creation
withWord: aString count: aNumber metaModels: aCollection
	^ self basicNew initializeWithWord: aString 
		count: aNumber
		metaModels: (OrderedCollection withAll: aCollection)