matching
matchAST: on
	on node if: #hasTypeIdentifier; do: [ :id | self addIdentifierNamed: id name ]