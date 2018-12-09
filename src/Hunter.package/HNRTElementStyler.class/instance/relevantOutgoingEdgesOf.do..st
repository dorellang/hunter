helpers - direct
relevantOutgoingEdgesOf: anElement do: aBlock
	"expected to be called exactly in a method with style pragma"
	| style |
	style := self styleFromContext: thisContext sender.
	self assertStyleIsWithEdges: style.
	self relevantOutgoingEdgesOf: anElement forStyle: style do: aBlock