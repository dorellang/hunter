tests
testClassOnExample

	| project classes |
	project := Hunter new stream: self exampleCode readStream; buildProject.
	
	self assert: project classes size equals: 2.
	classes := project classes.
	self assert: classes first name equals: 'Rectangle'.
	self assert: classes first superclass isNil.
	
	self assert: classes second name equals: 'ColoredRectangle'.
	self assert: classes second superclassName equals: 'Rectangle'.
	self assert: classes second superclass equals: classes first.
	
	self deny: project hasNoClasses.
	self assert: project hasClasses.