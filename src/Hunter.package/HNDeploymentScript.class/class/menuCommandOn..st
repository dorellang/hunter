world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #standalone)
		order: 0.004;
		parent: HNAbstractWorldMenu projectName asSymbol;
		label: 'Launch as a standalone application';
		icon: HNAbstractWorldMenu image;
		action: [ self deploy ]