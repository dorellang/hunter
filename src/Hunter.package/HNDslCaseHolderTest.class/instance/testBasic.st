tests
testBasic
	| c1 c2 c3 c4 c5 cases builder holder resultCases |
	c1 := HNDslCase new types: #(Identifier Literal); selector: #left; priority: 5.
	c2 := HNDslCase new types: #(FunctionCall); selector: nil; priority: 4.
	c3 := HNDslCase new types: #(); selector: #args; priority: 3.
	c4 := 	HNDslCase new
		types: #(ArrowFunctionExpression FunctionExpression FunctionDeclaration Identifier);
		priority: 2;
		selector: #callee.
	c5 := HNDslCase new types: #(AssignmentPattern); selector: #left; priority: 1.
	cases := {c1. c2. c3. c4. c5}.
	builder := HNDslCaseHolderBuilder new.
	cases do: [ :case | builder addCase: case ].
	holder := builder build.
	self assert: holder isEmpty not.

	resultCases := OrderedCollection new.
	holder forCasesWithType: nil selector: nil do: [ :case | resultCases add: case ].
	self assert: resultCases asArray equals: { c5. c4. c3. c2. c1 }.
	
	resultCases := OrderedCollection new.
	holder forCasesWithType: nil selector: #left do: [ :case | resultCases add: case ].
	self assert: resultCases asArray equals: { c5. c2. c1 }.

	resultCases := OrderedCollection new.
	holder forCasesWithType: #foo selector: #bar do: [ :case | resultCases add: case ].
	self assert: resultCases isEmpty.

	resultCases := OrderedCollection new.
	holder forCasesWithType: #Identifier selector: nil do: [ :case | resultCases add: case ].
	self assert: resultCases asArray equals: { c4. c1 }.
	
	resultCases := OrderedCollection new.
	holder forCasesWithType: #FunctionDeclaration selector: #callee
		do: [ :case | resultCases add: case ].
	self assert: resultCases asArray equals: { c4 }.

	resultCases := OrderedCollection new.
	holder forCasesWithType: #ClassExpression selector: #args
		do: [ :case | resultCases add: case ].
	self assert: resultCases asArray equals: { c3 }.