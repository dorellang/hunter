accessing
basename
	"Return the file name of the fully qualified file name"
	filepath ifNil: [ ^ '<NO NAME>' ].
	^ (filepath substrings: '/') last