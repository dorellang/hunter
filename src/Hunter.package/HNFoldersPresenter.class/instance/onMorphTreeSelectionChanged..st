spec protocol
onMorphTreeSelectionChanged: anAnnouncement
	| selectedItem |
	reacting ifTrue: [ ^ self ]. "short circuit processing change"

	anAnnouncement selection lastSelectedNode ifNil: [ 
		selectedEntity := nil.
		self refresher refreshIfRequested.
		^self ]. "No selection"
	
	"this executes only when user actually clicked an item in folder tree"
	ongoingManualSelection := true.
	[
		self flag: #todo. "refactor this is long and messy :S"
		selectedItem := anAnnouncement selection lastSelectedNode item.
		(selectedItem isKindOf: HNProgram ) ifTrue: [
			selectedEntity := selectedItem.
			self refresher refreshIfRequested
		].
		(selectedItem isKindOf: HNFolder ) ifTrue: [
			selectedFolder := selectedItem.
			self refresher refreshIfRequested
		]
	] ensure: [ ongoingManualSelection := false ]