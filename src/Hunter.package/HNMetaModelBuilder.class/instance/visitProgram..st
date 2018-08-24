visiting
visitProgram: aProgramNode
	| builder program |
	program := HNProgram new definitionNode: aProgramNode; filepath: programPath.
	metaModel addProgram: program.
	metaModel project linkNode: aProgramNode toMetaModel: program.
	builder := self species withMetaModel: program.
	aProgramNode body do: [ :item | item accept: builder ].
