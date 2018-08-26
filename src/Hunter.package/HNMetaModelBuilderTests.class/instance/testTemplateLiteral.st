tests
testTemplateLiteral
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNTemplateLiteralNode new
				quasis: {
					HNTemplateElementNode new
						value: (HNTemplateElementValueNode new cooked: 'Hola, '; raw: 'Hola, ');
						tail: false.
					HNTemplateElementNode new
						value: (HNTemplateElementValueNode new cooked: '!! '; raw: '!! ');
						tail: false.
					HNTemplateElementNode new
						value: (HNTemplateElementValueNode new cooked: '\\n'; raw: '\n');
						tail: false.
				};
				expressions: {
					HNLiteralNode new value: 'world'; raw: '"world"'.
					HNArrowFunctionExpressionNode new
						params: {};
						body: (
							HNFunctionExpressionNode new
								params: {};
								body: (HNLiteralNode new value: 23; raw: '23');
								expression: true;
								async: false;
								generator: false
						)
				}
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil
