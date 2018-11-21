initialization
initializeWidgets
	glamour := HNGlamourPresentationPresenter new
		buildPresentationWith: [
			HNRoassalVizGlamourPresentation new
				createViewWith: [ self view ];
				paintWith: [ :view | self paintInto: view ];
				startOn: 1.
		]