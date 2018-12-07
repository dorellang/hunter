helpers
testHub: aHub with: aPromiseCollectionCollection
	| combined |
	aPromiseCollectionCollection do: [ :promiseCollection |
		promiseCollection do: [ :p | aHub addInputPromise: p ]
	].
	combined := aHub promisesCombined.
	combined then: [ :x | result := 'resolved' ]
		catch: [ :x | result := 'rejected' ]