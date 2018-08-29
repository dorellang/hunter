processing
process: aNode
	actions do: [ :a | a cull: aNode cull: nil "second cull is for context" ]