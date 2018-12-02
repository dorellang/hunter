spec protocol
onMorphTreeSelectionChanged: anAnnouncement
	| selectedItem |
	reacting ifTrue: [ ^ self ]. "short circuit processing change"
	selecting := true.
	[
		selectedItem := anAnnouncement selection lastSelectedNode item.
		(selectedItem isKindOf: HNProgram ) ifTrue: [
			selectedEntity := selectedItem.
			self refresher refreshIfRequested
		]
	] ensure: [ selecting := false ]