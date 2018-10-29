accessing
commonPathPrefix
	commonPathPrefix ifNotNil: [ :v | ^ v ].
	self programs isEmpty ifTrue: [^ commonPathPrefix := '/'].
	commonPathPrefix := self programs first filepath asPath parent.
	self programs do: [ :program |
		| programDir |
		programDir := program filepath asPath parent.
		[ commonPathPrefix = programDir or: [ commonPathPrefix contains: programDir ] ]
			whileFalse: [ commonPathPrefix := commonPathPrefix parent ]
	].
	^ commonPathPrefix := commonPathPrefix pathString