instance creation
casesDict: aDictionary knownTypes: typeSet knownSelectors: selectorSet
	^ self basicNew initializeWithCasesDict: aDictionary
		knownTypes: typeSet
		knownSelectors: selectorSet