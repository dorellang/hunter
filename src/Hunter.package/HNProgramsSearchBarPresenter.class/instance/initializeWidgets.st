initialization
initializeWidgets
	"initializing state"
	projectSearchResult := #().
	currentMode := #contents.
	
	"initializing subwidgets"
	searchTextInput := self instantiate: TextInputFieldPresenter.
	searchTextInput autoAccept: true;
		ghostText: 'Search in the project...';
		whenTextChanged: [ :text | 
			stringToFind := text.
			self refresher refreshIfRequested.
		].

	searchInContentsModeRadio := self instantiate: RadioButtonPresenter.
	searchInContentsModeRadio label: 'contents';
		whenActivatedDo: [
			currentMode := #contents.
			self refresher refreshIfRequested.
		].

	searchInPathModeRadio := self instantiate: RadioButtonPresenter.
	searchInPathModeRadio label: 'path';
		whenActivatedDo: [
			currentMode := #path.
			self refresher refreshIfRequested.
		].