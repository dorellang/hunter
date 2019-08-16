accessing
casesForChildrenAt: aGetterSelector
	^ matchChildrenAtDict at: aGetterSelector ifAbsentPut: OrderedCollection new