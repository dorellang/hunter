initialization
initializeWidgets
	viz := self instantiate: HNNameCloudVizPresenter on: [ :p | p inheritSharedDataBindings ]