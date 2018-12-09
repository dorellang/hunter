initialization
initializeWidgets
	self flag: #todo. "2 instantiate?!"
	viz := self instantiate: (self instantiate: HNProgramsVizPresenter on: [ :v |
		v 	project: project;
			selectedEntity: self &#selectedEntity;
			selectedFolder: self &#selectedFolder;
			projectSearchResult: self &#projectSearchResult.
	]).
	foldersPane := self instantiate: HNFoldersPresenter on: [ :v |
		v 	project: project;
			selectedEntity: self &#selectedEntity;
			selectedFolder: self &#selectedFolder;
			projectSearchResult: self &#projectSearchResult
	].
	searchBar := self instantiate: HNProgramsSearchBarPresenter on: [ :v |
		v 	project: project;
			projectSearchResult: self &#projectSearchResult;
			stringToFind: self &#stringToFind
	].