private - master tabs
nameCloudTab
	| tab |
	tab := self newTab.
	tab label: 'NameCloud';
		iconName: #glamorousCloud;
		closeable: false;
		presenter: (self instantiate: HNNameCloudVizPresenter on: [ :v | v project: project ]).
	^ tab