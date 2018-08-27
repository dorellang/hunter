private - loading
loadFromJSONStream: readStream
	^ (self setupNeoJSONReader: (NeoJSONReader on: readStream))
		for: HNParseResult do: [ :mapping |
			mapping mapInstVars: #(path type status sourceType).
			(mapping mapInstVar: #result) valueSchema: #ASTNode.
		];
		for: #DMESParseResultList customDo: [ :mapping |
			mapping listOfElementSchema: HNParseResult
		];
		nextAs: #DMESParseResultList.
