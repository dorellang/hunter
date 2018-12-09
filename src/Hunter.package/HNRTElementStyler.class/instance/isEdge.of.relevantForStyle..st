helpers
isEdge: anEdge of: anElement relevantForStyle: aStyle
	| anotherElement |
	anotherElement := anEdge otherEndOf: anElement.
	^ (anotherElement hasStyleWithEdgesMoreImportantThan: aStyle) not.
