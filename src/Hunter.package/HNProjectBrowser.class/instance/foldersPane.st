private
foldersPane
	^ self instantiate: HNFoldersPresenter on: [ :p | p inheritSharedDataBindings ].