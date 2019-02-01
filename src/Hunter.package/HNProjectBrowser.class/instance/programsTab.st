private
programsTab
	^ self newTab
		label: 'Programs';
		iconName: #objects;
		closeable: false;
		presenter: (self instantiate: HNProgramsPresenter on: [ :p | p inheritSharedDataBindings ]);
		yourself