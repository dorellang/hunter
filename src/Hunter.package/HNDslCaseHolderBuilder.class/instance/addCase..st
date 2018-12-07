adding
addCase: aCase
	| caseTypes |
	self addCase: aCase withType: #'*' selector: #'*'.
	self addCase: aCase withType: #'*' selector: aCase selector.
	aCase selector ifNotNil: [ :s | selectors add: s ].
	caseTypes := aCase types ifNotEmpty: [ aCase types ] ifEmpty: [ {nil} ].
	caseTypes do: [ :t |
		self addCase: aCase withType: t selector: #'*'.
		self addCase: aCase withType: t selector: aCase selector.
		t ifNotNil: [ types add: t ].
	].