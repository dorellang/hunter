instance creation
setupNeoJSONReader: aNeoJSONReader
	"Sets up a NeoJSONReader with the AST Schema, which is named #ASTNode"
	aNeoJSONReader
		for: #ASTNode customDo: [ :mapping  | 
			mapping decoder: [ :readValue |
				| isOk |
				"half-assed way to check if we've got an error... We'll improve it..."
				isOk := readValue includesKey: 'type'.
				isOk ifTrue: [ self processValue: readValue ]
			].
		].
	^ aNeoJSONReader