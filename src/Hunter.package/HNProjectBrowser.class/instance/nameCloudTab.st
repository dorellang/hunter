private - master tabs
nameCloudTab
	| tab |
	tab := self newTab.
	tab label: 'NameCloud';
		closeable: false;
		presenter: (LabelPresenter new label: 'namecloud').
	^ tab