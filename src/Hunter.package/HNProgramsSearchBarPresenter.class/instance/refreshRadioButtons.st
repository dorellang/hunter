accessing
refreshRadioButtons 
	(currentMode = #path) ifTrue: [
		searchInPathModeRadio privateSetState: true.
		searchInContentsModeRadio privateSetState: false.
		^ self.
	].
	(currentMode = #contents) ifTrue: [
		searchInPathModeRadio privateSetState: false.
		searchInContentsModeRadio privateSetState: true.
		^ self.
	].
	Error signal: 'Unknown mode in search bar'.