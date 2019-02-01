world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: ('GitHub') asSymbol)
			order: 0.02; 
			parent: self projectName asSymbol;
			label: 'GitHub';
			icon: self image;
			action: [ WebBrowser openOn: 'https://github.com/dorellang/hunter' ]