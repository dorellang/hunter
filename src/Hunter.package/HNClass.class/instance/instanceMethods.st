accessing
instanceMethods
	"Return the list of instance methods"
	^ instanceMethods ifNil: [ instanceMethods := OrderedCollection new].