private
handleExpressionLValue: aNode
	aNode type = 'MemberExpression' ifTrue: [
		self handleExpressionLValue: aNode object.
		aNode computed ifTrue: [ aNode property accept: self ].
		^ self
	].
	aNode accept: self