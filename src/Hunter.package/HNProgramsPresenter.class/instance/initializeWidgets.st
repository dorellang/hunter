initialization
initializeWidgets
	viz := self instantiate: HNProgramsVizPresenter on: [ :p | p inheritSharedDataBindings ].
	foldersPane := self instantiate: HNFoldersPresenter on: [ :p | p inheritSharedDataBindings ].
	searchBar := self instantiate: HNProgramsSearchBarPresenter on: [ :p | p inheritSharedDataBindings ].