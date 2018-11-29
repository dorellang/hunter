building
compose
	| tabulator |
	tabulator := self tabulator column: #view; yourself.
	tabulator transmit to: #view; andShow: [ :a |
		a roassal2 initializeView: [ viewBlock value ];
			painting: [ :b :input | paintingBlock cull: b cull: input ]
	].
	tabulator transmit from: #view; toWatcher;
		when: [ :x | x isString not and: [ x isNotNil and: [ x isNumber not ] ] ];
		transformed: [ :x | selectedHolder value: x. self halt ].