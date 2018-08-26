visiting
visitForStatement: aForStatement
	aForStatement init isExpression ifTrue: [
		aForStatement init ifNotNil: [ :init | self interpretAndLink: init ]
	].
	aForStatement test ifNotNil: [ :test | self interpretAndLink: test ].
	aForStatement update ifNotNil: [ :update | self interpretAndLink: update ]