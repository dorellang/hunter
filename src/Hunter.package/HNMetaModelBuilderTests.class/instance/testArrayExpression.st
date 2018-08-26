tests
testArrayExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: { HNArrayExpressionNode new
			elements: {
				HNLiteralNode new value: 42; raw: '42'.
				HNFunctionExpressionNode new
					id: (HNIdentifierNode new name: 'asdf');
					params: {};
					body: (
						HNBlockStatementNode new
							body: {
								HNReturnStatementNode new
									argument: (HNLiteralNode new value: true; raw: 'true').
							}
					);
					expression: false;
					generator: false;
					async: false.
			HNSpreadElementNode new argument: (HNIdentifierNode new name: 'hola')
			}
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name equals: 'asdf'.
	self assert: self defaultProgram functions first definitionNode
		equals: (ast body first elements second).
