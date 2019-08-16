parsing
parseResultsFromStream: readStream
	"Answer the parse output. 
	It uses a NeoJSONReader with the AST Schema, which is named #ASTNode."

	^ (NeoJSONReader on: (ZnBufferedReadStream on: readStream))
		for: #ASTNode customDo: [ :mapping  | 
			mapping decoder: [ :readValue |
				| isOk |
				"half-assed way to check if we've got an error... We'll improve it..."
				isOk := readValue includesKey: 'type'.
				isOk ifTrue: [ self processValue: readValue ]
			] ];
		for: HNParseResult do: [ :mapping |
			mapping mapInstVars: #(path type status sourceType).
			(mapping mapInstVar: #result) valueSchema: #ASTNode.
		];
		nextListAs: HNParseResult