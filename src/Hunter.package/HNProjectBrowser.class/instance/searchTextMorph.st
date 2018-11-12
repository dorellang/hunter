building
searchTextMorph
	^ (Smalltalk ui theme
		newTextEntryIn: nil
		for: self entity
		get: #searchText
		set: #searchText:
		class: String
		getEnabled: nil
		help: 'filename part to search')
			ghostText: 'Search...';
			wantsFrameAdornments: false;
			autoAccept: true;
			yourself.
