initialization
initializeWidgets
	glamour := HNGlamourPresentationPresenter new
		glmPres: (
			HNRoassalVizGlamourPresentation new
				createViewWith: [ self newView ];
				paintWith: [ :view :model | self paint: model into: view ];
				startOn: self initialModel
		)