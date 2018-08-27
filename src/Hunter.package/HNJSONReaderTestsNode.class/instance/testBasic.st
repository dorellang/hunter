tests
testBasic
	| jsonStream parsedAST variableDeclaration variableDeclarator |

	jsonStream := '{
    "type": "Program",
    "body": [
        {
            "type": "VariableDeclaration",
            "declarations": [
                {
                    "type": "VariableDeclarator",
                    "id": {
                        "type": "Identifier",
                        "name": "answer"
                    },
                    "init": {
                        "type": "BinaryExpression",
                        "operator": "*",
                        "left": {
                            "type": "Literal",
                            "value": 6,
                            "raw": "6"
                        },
                        "right": {
                            "type": "Literal",
                            "value": 7,
                            "raw": "7"
                        }
                    }
                }
            ],
            "kind": "var"
        }
    ],
    "sourceType": "script"
}' readStream.

	parsedAST := (Hunter new setupNeoJSONReader: (NeoJSONReader on: jsonStream))
		nextAs: #ASTNode.

	self assert: parsedAST type equals: 'Program'.
	self assert: parsedAST body size equals: 1.	
	variableDeclaration := parsedAST body at: 1.
	self assert: variableDeclaration parent equals: parsedAST.
	self assert: variableDeclaration type equals: 'VariableDeclaration'.
	self assert: variableDeclaration kind equals: 'var'.
	self assert: variableDeclaration declarations size equals: 1.
	variableDeclarator := variableDeclaration declarations at: 1.
	self assert: variableDeclarator id name equals: 'answer'.
	self assert: variableDeclarator id parent equals: variableDeclarator.
	self assert: variableDeclarator parent equals: variableDeclaration.
	self assert: variableDeclarator init type equals: 'BinaryExpression'.

	