initialization
initializePresenter
	searchTextInput
		autoAccept: true;
		ghostText: 'Enter search string...';
		whenTextChanged: [ :text | searchTextString := text.
			self refresher refreshIfRequested ]