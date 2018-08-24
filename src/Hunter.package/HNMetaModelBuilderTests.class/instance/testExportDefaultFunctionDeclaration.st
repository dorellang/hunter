tests
testExportDefaultFunctionDeclaration
	| ast |

	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNExportDefaultDeclarationNode new
				declaration: (HNFunctionDeclarationNode new
					id: (HNIdentifierNode new name: 'myFun');
					params: {};
					body: (HNBlockStatementNode new body: {});
					generator: false;
					expression: false;
					async: false)
		}
	).

	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name equals: 'myFun'.
