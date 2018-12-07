enumerating
forCasesWithType: type selector: selector doWithParent: aBlock
	self forCasesWithType: type selector: selector
		do: [ :case | aBlock value: case value: case parent ]