matching
matchAST: when
	when node: #hasTypeIdentifier; do: [ :id | self addIdentifierNamed: id name ]