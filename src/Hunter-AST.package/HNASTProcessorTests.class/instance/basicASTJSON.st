helpers
basicASTJSON
	"original source:
	function foo(){
		let [{ bar,  baz = true }] = qux;
		return 42 + quux;
	}
	corge();
	"
	^ '[{ "path":"/tmp/example1.js", "type":"script", "status": "ok", "result":
{
    "type": "Program",
    "body": [
        {
            "type": "FunctionDeclaration",
            "id": {
                "type": "Identifier",
                "name": "foo"
            },
            "params": [],
            "body": {
                "type": "BlockStatement",
                "body": [
                    {
                        "type": "VariableDeclaration",
                        "declarations": [
                            {
                                "type": "VariableDeclarator",
                                "id": {
                                    "type": "ArrayPattern",
                                    "elements": [
                                        {
                                            "type": "ObjectPattern",
                                            "properties": [
                                                {
                                                    "type": "Property",
                                                    "key": {
                                                        "type": "Identifier",
                                                        "name": "bar"
                                                    },
                                                    "computed": false,
                                                    "value": {
                                                        "type": "Identifier",
                                                        "name": "bar"
                                                    },
                                                    "kind": "init",
                                                    "method": false,
                                                    "shorthand": true
                                                },
                                                {
                                                    "type": "Property",
                                                    "key": {
                                                        "type": "Identifier",
                                                        "name": "baz"
                                                    },
                                                    "computed": false,
                                                    "value": {
                                                        "type": "AssignmentPattern",
                                                        "left": {
                                                            "type": "Identifier",
                                                            "name": "baz"
                                                        },
                                                        "right": {
                                                            "type": "Literal",
                                                            "value": true,
                                                            "raw": "true"
                                                        }
                                                    },
                                                    "kind": "init",
                                                    "method": false,
                                                    "shorthand": true
                                                }
                                            ]
                                        }
                                    ]
                                },
                                "init": {
                                    "type": "Identifier",
                                    "name": "qux"
                                }
                            }
                        ],
                        "kind": "let"
                    },
                    {
                        "type": "ReturnStatement",
                        "argument": {
                            "type": "BinaryExpression",
                            "operator": "+",
                            "left": {
                                "type": "Literal",
                                "value": 42,
                                "raw": "42"
                            },
                            "right": {
                                "type": "Identifier",
                                "name": "quux"
                            }
                        }
                    }
                ]
            },
            "generator": false,
            "expression": false,
            "async": false
        },
        {
            "type": "ExpressionStatement",
            "expression": {
                "type": "CallExpression",
                "callee": {
                    "type": "Identifier",
                    "name": "corge"
                },
                "arguments": []
            }
        }
    ],
    "sourceType": "script"
}
}]
'