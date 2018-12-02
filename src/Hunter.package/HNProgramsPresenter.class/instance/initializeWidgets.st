initialization
initializeWidgets
	viz := self instantiate: (self instantiate: HNProgramsVizPresenter on: [ :v |
		v project: project; selectedEntity: self &#selectedEntity
	]).
	foldersPane := self instantiate: HNFoldersPresenter on: [ :v |
		v project: project; selectedEntity: self &#selectedEntity
	].