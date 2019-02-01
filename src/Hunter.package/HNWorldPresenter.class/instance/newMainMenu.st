instance creation
newMainMenu
	| aMenu |
	aMenu := MenuPresenter new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Open';
						description: 'Choose a directory to browse';
						icon: (self iconNamed: #openIcon);
						action: [ self chooseDirectoryAndOpen ] ] ].
	^ aMenu