tests
testTaggedTemplateExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNTaggedTemplateExpressionNode new
				tag: (
					HNArrowFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'imRunningFree');
						params: {};
						body: (HNLiteralNode new value: true; raw: 'true');
						expression: true;
						generator: false;
						async: false
				);
				quasi: (
					HNTemplateLiteralNode new
						quasis: {
							HNTemplateElementNode new
								value: (HNTemplateElementValueNode new cooked: 'Hola, '; raw: 'Hola, ');
								tail: false.
							HNTemplateElementNode new
								value: (HNTemplateElementValueNode new cooked: '!! '; raw: '!! ');
								tail: true.
						};
						expressions: {
							HNArrowFunctionExpressionNode new
								params: {};
								body: (HNLiteralNode new value: 'hey'; raw: '"hey"');
								expression: true;
								generator: false;
								async: false
						}
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 2.
	self assert: self defaultProgram functions first name equals: 'imRunningFree'.
	self assert: self defaultProgram functions second name isNil
