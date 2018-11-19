private - master tabs
umlVizTab
	| tab |
	tab := self newTab.
	tab label: 'UML';
		closeable: false;
		presenter: (LabelPresenter new label: 'UML').
	^ tab