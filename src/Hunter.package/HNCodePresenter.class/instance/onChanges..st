refreshing
onChanges: dataChanges
	dataChanges
		whenValueChangedAt: #selectedEntity do: [
			self refreshSelectedEntity.
			self refreshHighlights. 
		];
		whenValueChangedAt: #stringToFind send: #refreshHighlights