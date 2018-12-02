private - master tabs
nameCloudTab
	| tab |
	tab := self newTab.
	tab label: 'NameCloud';
		iconName: #glamorousCloud;
		closeable: false;
		presenter: (self instantiate: HNNameCloudPresenter on: [ :p |
			p project: project;
				selectedEntity: self &#selectedEntity
		]).
	^ tab