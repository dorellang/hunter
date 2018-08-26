tests
testLabeledStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNLabeledStatementNode new
				label: (HNIdentifierNode new name: 'yourName');
				body: (
					HNFunctionDeclarationNode new
						id: (HNIdentifierNode new name: 'peaceSells');
						body: (
							HNLiteralNode new
								value: 'butWhosBuying';
								raw: '"butWhosBuying"'
						);
						params: {};
						expression: true;
						generator: false;
						async: false
				)
		}
	).

	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name equals: 'peaceSells'.
