world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: ('About ', self projectName) asSymbol)
			order: 0.001; 
			parent: self projectName asSymbol;
			label: 'About ', self projectName;
			icon: (Smalltalk ui icons iconNamed: #smallLanguageIcon);
			action: [ self new open ]