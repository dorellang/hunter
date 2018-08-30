matching
matchAST: on
	on node if: #hasTypeIdentifier;
		ifNeither: [
			on node if: [ :id | id name = 'foo' ].
			on node if: [ :id | id name = 'bar' ].
			on node if: [ :id | id name = 'baz' ].
		];
		do: [ :id | self addIdentifierNamed: id name ]