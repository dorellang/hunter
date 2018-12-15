public
deploy
	"
	self deploy
	"
	self
		closeAllWindows;
		removeAllMorphs;
		setTheme;
		deactivateStartupActions;
		dontRaiseWarningForMissingChangesOrSourcesFiles;
		deactivateDeprecationWarnings;
		beDeployed;
		openFullScreen