tests
testForOf
	| ast programScope forScope forBlockScope |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNForOfStatementNode new
				left: (HNVariableDeclarationNode new
						kind: 'let';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'item')});
				right: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNLiteralNode new value: 2; raw: '2');
						generator: false;
						async: false;
						expression: true);
				body: (HNBlockStatementNode new body: {
					HNVariableDeclarationNode new
						kind: 'const';
						declarations: {
							HNVariableDeclaratorNode new id: (HNIdentifierNode new name: 'hola')
						}
				})
		}
	).

	ast accept: metaModelBuilder.
	ast accept: scopeProcessor.
	programScope := project scopeFromNode: ast.
	forScope := project scopeFromNode: ast body first.
	forBlockScope := project scopeFromNode: ast body first body.
	self assert: (
		(IdentitySet withAll: {
			programScope. forScope. forBlockScope
		}) do: [ :scope | self assert: scope isNotNil ]; size) equals: 3.
	self assert: (forScope isDeclared: 'item').
	self assert: (forBlockScope isDeclared: 'hola')