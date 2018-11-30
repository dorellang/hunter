private - master tabs
foldersTab
	| tab |
	tab := self newTab.
	tab label: 'Folders';
		iconName: #package;
		closeable: false;
		presenter: (self instantiate: HNFoldersPresenter on: [ :v | v project: project ]).
	^ tab