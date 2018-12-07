actions
closeWindowsAndOpenDevelopmentEnvironment
	PanelMorph allInstancesDo: [  :pm | pm delete ].
	self closeAllWindows.
	TaskbarMorph reset.
