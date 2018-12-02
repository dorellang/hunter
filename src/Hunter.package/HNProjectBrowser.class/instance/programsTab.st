private - master tabs
programsTab
	| tab |
	tab := self newTab.
	tab label: 'Programs';
		iconName: #objects;
		closeable: false;
		presenter: (self instantiate: HNProgramsPresenter on: [ :v |
			v project: project; selectedEntity: self &#selectedEntity
		]).
	^ tab