refreshing
highlightSearchResult: someElements
	| elementSet |
	elementSet := someElements asSet.
	view view elements do: [ :anotherElement |
		(elementSet includes: anotherElement) ifTrue: [
			anotherElement showStyleNamed: #searchResult
		] ifFalse: [
			anotherElement hideStyleNamed: #searchResult
		]
	]