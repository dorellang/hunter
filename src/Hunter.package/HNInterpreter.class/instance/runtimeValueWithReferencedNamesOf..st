private
runtimeValueWithReferencedNamesOf: aNodeCollection
	^ HNRuntimeValue new
		referencedNames:
			((aNodeCollection flatCollect: [:el | (el accept: self) referencedNames])
				collect: [ :e | e -> true ]
				into: OrderedDictionary new) keys	