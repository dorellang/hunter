private
umlVizTab
	^ self newTab
		label: 'UML';
		iconName: #hierarchy;
		closeable: false;
		presenter: (self instantiate: HNUMLVizPresenter on: [ :p | p inheritSharedDataBindings ]);
		yourself