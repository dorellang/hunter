accessing
sourceCode
	^ sourceCode ifNil: [
		sourceCode := self definitionNode
			ifNil: [ '' ]
			ifNotNil: [
				| lineCount startLine endLine |
				lineCount := 1.
				startLine := self definitionNode loc start line.
				endLine := self definitionNode loc end line.
				String streamContents: [ :aStream |
					self sourceFileContents linesDo: [ :line |
						(lineCount between: startLine and: endLine)
							ifTrue: [aStream << line; lf].
						lineCount := lineCount + 1
					].
				]
		].
	]