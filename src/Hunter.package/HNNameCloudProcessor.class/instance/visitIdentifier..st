visiting
visitIdentifier: aNode
	| parts |
	parts := aNode name cutCamelCase.
	parts do: [ :part | self project nameCloudTerms addOccurrence: (
		HNNameCloudTermOccurrence new project: self project;
			word: part;
			node: aNode
	) ]