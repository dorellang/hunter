world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Open JSON file')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Open JSON AST file';
			icon: self image;
			action: [ self new openFile ]