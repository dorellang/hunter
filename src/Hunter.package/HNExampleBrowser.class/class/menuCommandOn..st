world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Live chat')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Example';
			icon: self image;
			action: [ self new openExample ]