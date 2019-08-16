serialization
postProcessWith: aDict
	"Subclass in child classes to implement custom behavior when deserializing
	 from json. Don't forget to call super."
	| locDict startPositionDict endPositionDict startPosition endPosition |
	locDict := aDict at: 'loc' ifAbsent: [ Dictionary new ].
	startPositionDict := locDict at: 'start' ifAbsent: [ Dictionary new ].
	endPositionDict := locDict at: 'end' ifAbsent: [ Dictionary new ].
	startPosition := HNPositionNode new
		line: (startPositionDict at: 'line' ifAbsent: [nil]);
		column: (startPositionDict at: 'column' ifAbsent: [nil]).
	endPosition := HNPositionNode new
		line: (endPositionDict at: 'line' ifAbsent: [nil]);
		column: (endPositionDict at: 'column' ifAbsent: [nil]).
	self loc: (HNSourceLocationNode new
		start: startPosition;
		end: endPosition;
		source: (locDict at: 'source' ifAbsent: [nil]))
