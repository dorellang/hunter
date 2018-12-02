specs
onChanges: dataChanges
	reacting := true. "we don't want like change the selection... so we set this to true"
	[
		dataChanges whenValueChangedAt: #selectedEntity send: #onSelectedEntityChange:.
	] ensure: [ reacting := false ]
	