private - master tabs
programsVizTab
	| tab |
	tab := self newTab.
	tab label: 'Programs';
		iconName: #objects;
		closeable: false;
		presenter: (self instantiate: HNProgramsVizPresenter on: [ :v |
			v project: project;
				selectedEntity: self &#selectedEntity
		]).
	^ tab