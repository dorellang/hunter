world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Open Directory')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Open Javascript project directory';
			icon: self image;
			action: [ self new openFile ].
	(aBuilder item: #'Open Last Directory')
			order: 0.005; 
			parent: self projectName asSymbol;
			label: 'Open last opened directory';
			icon: self image;
			action: [ self new openLastDirectory ]