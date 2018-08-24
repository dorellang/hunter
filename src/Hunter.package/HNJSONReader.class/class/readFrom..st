instance creation
readFrom: readStream
	^ (NeoJSONReader on: readStream)
		for: #ASTNode customDo: [ :mapping  | 
			mapping decoder: [ :readValue |
				self processValue: readValue
			].
		];
		nextAs: #ASTNode.