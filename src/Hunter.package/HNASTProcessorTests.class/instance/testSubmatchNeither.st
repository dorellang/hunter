tests
testSubmatchNeither
	| ast processor ids coolIds |
	self skip: 'Nested AST queries are not supported right now'.
	ast := self basicAST.
	ids := OrderedCollection new.
	coolIds := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier;
			ifMatches: [
				on neither ifValueAt: #name satisfies: [ :str | str beginsWith: 'ba'];
					ifValueAt: #name satisfies: [ :str | str beginsWith: 'qu'];
					do: [ :id | coolIds add: id name ]
			];
			do: [ :id | ids add: id name ]
	].
	ast accept: processor.
	self assert: ids asArray equals: { 'foo'. 'qux'. 'bar'. 'bar'. 'baz'. 'baz'. 'quux'. 'corge'}.
	self assert: coolIds asArray equals: {'foo'. 'corge'}