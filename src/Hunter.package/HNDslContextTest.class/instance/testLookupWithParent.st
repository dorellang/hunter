tests
testLookupWithParent
	| root ctx1 ctx2 |
	root := HNDslRootContext withSymbols: #(meaning of life).
	ctx1 := HNDslContext withParent: root symbols: #(hello world).
	ctx2 := HNDslContext withParent: ctx1 symbols: #(foo).
	
	"asserting initial state"

	self assert: root meaning isNil.
	self assert: root of isNil.
	self assert: root life isNil.
	self should: [ root hello ] raise: HNDslVariableNotFound.
	self should: [ root world ] raise: HNDslVariableNotFound.	
	self should: [ root foo ] raise: HNDslVariableNotFound.
	
	self assert: ctx1 meaning isNil.
	self assert: ctx1 of isNil.
	self assert: ctx1 life isNil.
	self assert: ctx1 hello isNil.
	self assert: ctx1 world isNil.
	self should: [ ctx1 foo ] raise: HNDslVariableNotFound.

	self assert: ctx2 meaning isNil.
	self assert: ctx2 of isNil.
	self assert: ctx2 life isNil.
	self assert: ctx2 hello isNil.
	self assert: ctx2 world isNil.
	self assert: ctx2 foo isNil.

	"now lets have some fun :D"
	self should: [ root foo: 'lala' ] raise: HNDslVariableNotFound.
	self should: [ ctx1 foo: 'lala' ] raise: HNDslVariableNotFound.
	ctx2 foo: 'lala'.
	ctx1 meaning: 42.	
	ctx2 life: #fortytwo.
	self should: [ root world: 'mundo' ] raise: HNDslVariableNotFound.
	ctx1 world: 'mundo'.
	ctx2 hello: 'hola'.
	self should: [ ctx2 doesntExist: 'xdddd' ] raise: HNDslVariableNotFound.

	"assert final state"
	self assert: root meaning equals: 42.
	self assert: root of isNil.
	self assert: root life equals: #fortytwo.
	self should: [ root hello ] raise: HNDslVariableNotFound.
	self should: [ root world ] raise: HNDslVariableNotFound.	
	self should: [ root foo ] raise: HNDslVariableNotFound.
	
	self assert: ctx1 meaning equals: 42.
	self assert: ctx1 of isNil.
	self assert: ctx1 life equals: #fortytwo.
	self assert: ctx1 hello equals: 'hola'.
	self assert: ctx1 world equals: 'mundo'.
	self should: [ ctx1 foo ] raise: HNDslVariableNotFound.

	self assert: ctx2 meaning equals: 42.
	self assert: ctx2 of isNil.
	self assert: ctx2 life equals: #fortytwo.
	self assert: ctx2 hello equals: 'hola'.
	self assert: ctx2 world equals: 'mundo'.
	self assert: ctx2 foo equals: 'lala'.
