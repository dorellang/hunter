adding
addProgram: aProgram
	aProgram parent: self.
	self programs add: aProgram.
	aProgram filepath ifNotNil: [ :pathstr | self programsByPath at: pathstr put: aProgram ]