tests
testSubmatchAndMore
	| ast processor ids coolIds |
	ast := self basicAST.
	ids := OrderedCollection new.
	coolIds := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier;
			submatch: [
				on either ifValueAt: #name equals: 'foo';
					ifValueAt: #name equals: 'qux';
					do: [ :id | coolIds add: id name ]
			];
			do: [ :id | ids add: id name ]
	].
	ast accept: processor.
	self assert: ids asArray equals: { 'foo'. 'qux'. 'bar'. 'bar'. 'baz'. 'baz'. 'quux'. 'corge'}.
	self assert: coolIds asArray equals: {'foo'. 'qux'}