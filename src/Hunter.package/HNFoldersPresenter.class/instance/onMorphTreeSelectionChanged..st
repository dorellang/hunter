spec protocol
onMorphTreeSelectionChanged: anAnnouncement
	| selectedItem |
	reacting ifTrue: [ ^ self ]. "short circuit processing change"
	"this executes only when user actually clicked an item in folder tree"
	ongoingManualSelection := true.
	[
		selectedItem := anAnnouncement selection lastSelectedNode item.
		(selectedItem isKindOf: HNProgram ) ifTrue: [
			selectedEntity := selectedItem.
			self refresher refreshIfRequested
		]
	] ensure: [ ongoingManualSelection := false ]