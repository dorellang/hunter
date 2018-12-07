refreshing
onChanges: someChanges
	someChanges whenValueChangedAt: #currentMode send: #refreshState.
	someChanges whenValueChangedAt: #stringToFind send: #refreshState
