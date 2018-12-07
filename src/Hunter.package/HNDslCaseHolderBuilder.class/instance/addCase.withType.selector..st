adding
addCase: aCase withType: type selector: selector
	| key |
	key := self keyForType: type selector: selector.
	casesDict at: key ifPresent: [ :oc | oc add: aCase ]
		ifAbsentPut: [ OrderedCollection with: aCase ]
