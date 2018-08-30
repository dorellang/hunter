matching
matchAST: on
	on node if: #hasTypeIdentifier;
		unless: [ :n | n name = 'foo' ];
		do: [ :id | self addIdentifierNamed: id name ]