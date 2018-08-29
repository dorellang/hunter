tests
testBasicMetaModel
	| project |
	project := Hunter new
		moduleDirs: { self fixturePath: 'angular-simple' };
		buildProject.
	self assert: project ngModules size equals: 1.
	self assert: project ngDirectives size equals: 1.
	self assert: project ngControllers size equals: 1.
	self assert: project ngServices size equals: 1.
	self assert: project ngModules first name equals: 'todoListApp'.
	self assert: project ngDirectives first equals: 'todoList'.
	self assert: project ngDirectives first equals: 'todoListCtrl'.
	self assert: project ngServices first equals: 'TodoListService'