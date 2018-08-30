matching
matchAST: on
	on node if: #hasTypeIdentifier;
		ifEither: [
			on node if: [ :id | id name = 'foo' ].
			on node if: [ :id | id name = 'bar' ]
		];
		do: [ :id | self addIdentifierNamed: id name ]