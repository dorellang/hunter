accessing
linesOfCode
	| startingLine endingLine |
	startingLine := self loc ifNotNil: [ :l | l start ifNotNil: [ :pos | pos line ] ].
	endingLine := self loc ifNotNil: [ :l | l end ifNotNil: [ :pos | pos line ] ].
	^ (startingLine isNotNil and: [ endingLine isNotNil ])
		ifTrue: [  endingLine - startingLine + 1 ]
		ifFalse: [ nil ]