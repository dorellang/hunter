visiting
visitForStatement: aForStatement
	aForStatement init ifNotNil: [ :init | init accept: self ].
	aForStatement test ifNotNil: [ :test | test accept: self ].
	aForStatement update ifNotNil: [ :update | update accept: self ].
	aForStatement body accept: self