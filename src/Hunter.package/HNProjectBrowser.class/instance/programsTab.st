private - master tabs
programsTab
	| tab programs |
	tab := self newTab.
	programs := (self instantiate: HNProgramsPresenter on: [ :v |
		v project: project; selectedEntity: self &#selectedEntity
	]).
	tab label: 'Programs';
		iconName: #objects;
		closeable: false;
		presenter: programs.
	^ tab