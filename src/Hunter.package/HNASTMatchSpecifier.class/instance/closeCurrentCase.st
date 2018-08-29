closing
closeCurrentCase
	self currentCaseBuilder ifNotNil: [ matcher addCase: self currentCaseBuilder build ]