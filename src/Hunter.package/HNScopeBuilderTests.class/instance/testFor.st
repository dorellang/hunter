tests
testFor
	| ast programScope forScope forBlockScope |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNForStatementNode new
				init: (
					HNVariableDeclarationNode new
						kind: 'let';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'i')});
				test: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNUnaryExpressionNode new
							operator: '+';
							argument: (HNLiteralNode new value: 1; raw: '"1"'));
							generator: false;
							async: false;
							expression: true);
				update: (
					HNUpdateExpressionNode new
						operator: '++';
						argument: (HNIdentifierNode new name: 'i');
						prefix: false);
				body: (HNBlockStatementNode new body: {
					HNVariableDeclarationNode new
						kind: 'let';
						declarations: {
							HNVariableDeclaratorNode new
								id: (HNIdentifierNode new name: 'tmp')}					
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
	self assert: (forScope isDeclared: 'i').
	self assert: (forBlockScope isDeclared: 'tmp').

