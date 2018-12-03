initialization
initializeWidgets
	viz := self instantiate: (self instantiate: HNProgramsVizPresenter on: [ :v |
		v 	project: project;
			selectedEntity: self &#selectedEntity; 
			searchTextString: self &#searchTextString.
	]).
	foldersPane := self instantiate: HNFoldersPresenter on: [ :v |
		v 	project: project; 
			selectedEntity: self &#selectedEntity
	].
	searchTextInput := self instantiate: TextInputFieldPresenter.