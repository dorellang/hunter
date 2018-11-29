initialization
initializeWidgets
	treeMap := self
		instantiate: HNTreeMapVizPresenter
		on: [ :p | 
			p
				project: project;
				selectedEntity: self & #selectedEntity ].
	code := self
		instantiate: HNCodePresenter
		on: [ :p | 
			p
				project: project;
				selectedEntity: self & #selectedEntity ]