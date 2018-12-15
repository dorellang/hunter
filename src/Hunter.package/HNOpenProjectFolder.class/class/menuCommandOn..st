world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Open')
			order: 0.0019; 
			parent: self projectName asSymbol;
			label: 'Open';
			icon: self image;
			action: [ HNWorldPresenter new openWithSpec ].
	(aBuilder item: #'Open Directory')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Open directory...';
			icon: self image;
			action: [ self new openFile ].
	(aBuilder item: #'Open Last Directory')
			order: 0.005; 
			parent: self projectName asSymbol;
			label: 'Open last directory';
			icon: self image;
			action: [ self new openLastDirectory ]