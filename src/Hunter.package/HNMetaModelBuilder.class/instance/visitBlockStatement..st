visiting
visitBlockStatement: aBlockStatement
	aBlockStatement body do: [ :declOrStmt | declOrStmt accept: self ].