visiting
visitArrayPattern: aNode
	aNode elements do: [ :el | el ifNotNil: [ :e | e accept: self ] ]