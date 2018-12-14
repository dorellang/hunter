initialization
initializeWidgets
	treeMap := self
		instantiate: HNTreeMapVizPresenter
		on: [ :p | p inheritSharedDataBindings ].
	code := self
		instantiate: HNCodePresenter
		on: [ :p | p inheritSharedDataBindings ].
	filepathLabel := self newLabel.