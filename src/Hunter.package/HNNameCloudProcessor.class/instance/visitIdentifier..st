visiting
visitIdentifier: aNode
	| parts |
	parts := aNode name cutCamelCase.
	parts do: [ :part | self project nameCloud addWord: part ]