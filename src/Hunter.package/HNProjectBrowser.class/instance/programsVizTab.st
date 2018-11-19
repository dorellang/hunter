private - master tabs
programsVizTab
	| tab |
	tab := self newTab.
	tab label: 'Programs';
		iconName: #objects;
		closeable: false;
		presenter: (HNProgramsVizPresenter on: [ :v | v project: project ]).
	^ tab