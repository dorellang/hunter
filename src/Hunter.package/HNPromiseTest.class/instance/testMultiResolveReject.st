tests
testMultiResolveReject
	| p trace |
	trace := OrderedCollection new.
	p := HNPromise on: [ :resolve :reject |
		resolve value: 1.
		reject value: 2.
		resolve value: 3
	].
	p then: [ :x | trace add: 'resolved to ', x asString ]
		catch: [ :x | trace add: 'never called ', x asString ].
	p then: [ :x | trace add: 'one more ', x asString ].
	p then: [ :x | trace add: 'two more ', x asString ].
	p then: [ :x | trace add: 'three more ', x asString ].
	self assert: trace asArray equals: {
		'resolved to 1'. 'one more 1'. 'two more 1'. 'three more 1'
	}