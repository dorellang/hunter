accessing
project
	^ project ifNil: [ project := self findProject ]