tests
testObjectExpression
	"TODO this takes into account functions declared in object properties as if they were normal
	functions... maybe it'd be interesting to consider them as object methods instead :P"

	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNObjectExpressionNode new
				properties: {
					HNPropertyNode new
						key: (HNIdentifierNode new name: 'hola');
						computed: false;
						value: (
							HNArrowFunctionExpressionNode new
								params: {};
								body: (HNLiteralNode new value: 1; raw: '1');
								generator: false;
								async: false;
								expression: true
						);
						kind: 'init';
						method: false;
						shorthand: false.
					HNPropertyNode new
						key: (HNCallExpressionNode new
							callee: (
								HNFunctionExpressionNode new
									id: (HNIdentifierNode new name: 'join');
									params: { HNIdentifierNode new name: 'a'. HNIdentifierNode new name: 'b' };
									body: (
										HNBlockStatementNode new
											body: {
												HNReturnStatementNode new
													argument: (
														HNBinaryExpressionNode new
															operator: '+';
															left: (HNIdentifierNode new name: 'a');
															right: (HNIdentifierNode new name: 'b')
													)
											}
									)		
							);
							arguments: {
								HNLiteralNode new value: 'hola'; raw: '"hola"'.
								HNLiteralNode new value: 'mundo'; raw: '"mundo"'
							}
						);
						computed: true;
						value: (HNIdentifierNode new name: 'foo');
						kind: 'init';
						method: false;
						shorthand: false.
					HNPropertyNode new
						key: (HNIdentifierNode new name: 'bar');
						computed: false;
						value: (HNIdentifierNode new name: 'bar');
						kind: 'init';
						method: false;
						shorthand: true
				}
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 2.
	"following assertion works because of function name guessing"
	self assert: self defaultProgram functions first name equals: 'hola'. 
	self assert: self defaultProgram functions second name equals: 'join'.
