initialization
initializeWidgets
	glamour := HNGlamourPresentationPresenter new
		buildPresentationWith: [
			HNRoassalVizGlamourPresentation new
				parentDataBindingOwner: self;
				refresher: self refresher;
				inheritDataBindingNamed: #selectedEntity;
				createViewWith: [ self view ];
				paintWith: [ :v | self paintInto: v ];
				startOn: 1.
		]