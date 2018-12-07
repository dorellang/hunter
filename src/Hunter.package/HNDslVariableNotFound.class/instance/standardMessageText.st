private
standardMessageText
	"Generate a standard textual description"
	
	^ String streamContents: [ :stream |
		stream << 'could not find variable named '.
		stream print: self object.
		stream << '.'
 	]