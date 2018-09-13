tests
testPromiseRaceEmpty
	(HNPromise race: {}) then: [ self fail: 'shouldnt resolve empty race' ]
		catch: [ self fail: 'shouldnt reject empty race' ]