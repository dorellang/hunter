accessing
attributes
	"Answers the dictionary of attributes, i.e. information that can external append to metamodel objects."
	self flag: #todo. "remove? implemented because it was difficult to inform the tree nodes about the map so this is a quick workarond."
	^ attributes ifNil: [ attributes := SmallDictionary new ]