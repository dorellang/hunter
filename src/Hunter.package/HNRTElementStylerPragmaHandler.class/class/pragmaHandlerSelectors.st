accessing
pragmaHandlerSelectors
	| pragmas |
	pragmas := Pragma allNamed: #pragmaHandler in: self.
	^ pragmas collect: #methodSelector.