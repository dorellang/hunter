initialization
initializeWidgets
	viz := self instantiate: HNNameCloudVizPresenter on: [ :p |
		p project: project;
			selectedEntity: self &#selectedEntity
	]