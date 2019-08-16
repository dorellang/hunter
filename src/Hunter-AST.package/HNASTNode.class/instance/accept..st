visiting
accept: aVisitor
	"This calculates via the type message the visit method, so it's not needed to
	be implemented by subclasses"
	
	^ aVisitor perform: ('visit', self type, ':') asSymbol with: self