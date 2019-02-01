world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #standalone)
		order: 0.009;
		parent: HNAbstractWorldMenu projectName asSymbol;
		label: 'Deploy as a standalone application';
		icon: HNAbstractWorldMenu image;
		action: [ self deploy ]