initialization
initializeWidgets
	glamour := HNGlamourPresentationPresenter new
		buildPresentationWith: [
			HNRoassalVizGlamourPresentation new
				parentDataBindingOwner: self;
				refresher: self refresher;
				selectedEntity: self &#selectedEntity;
				createViewWith: [ self view ];
				paintWith: [ :view | self paintInto: view ];
				startOn: 1.
		]