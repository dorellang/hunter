accessing
classNamed: aNameAsString
	"return a class named as aNameAsString. Return nil if the class is not found"
	^ self classes detect: [ :c | c name = aNameAsString ] ifNone: [ nil ]