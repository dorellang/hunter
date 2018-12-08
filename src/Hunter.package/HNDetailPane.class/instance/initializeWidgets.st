initialization
initializeWidgets
	treeMap := self
		instantiate: HNTreeMapVizPresenter
		on: [ :p | 
			p
				project: project;
				selectedEntity: self & #selectedEntity;
				stringToFind: self &#stringToFind ].
	code := self
		instantiate: HNCodePresenter
		on: [ :p | 
			p
				project: project;
				selectedEntity: self & #selectedEntity;
				stringToFind: self &#stringToFind ].
	filepathLabel := self newLabel.