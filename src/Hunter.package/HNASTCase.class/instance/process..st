processing
process: aNode
	actions do: [ :a | a cull: aNode cull: matcher context ]