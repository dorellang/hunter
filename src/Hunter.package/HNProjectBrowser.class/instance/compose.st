building
compose
	self title: [ :projectInB | 'Hunter - ' , projectInB project commonPathPrefix ].
"	self addAction: (GLMGenericAction new
		action: [
			self panes do: [ :aPane | 
				aPane updateToolbar.
				aPane presentations presentations first withAllPresentations do: [ :aPresentation |
				aPresentation wantsAutomaticRefresh ifTrue: [ 
					aPresentation requestRefresh ] ]
			]
		];
		icon: GLMUIThemeExtraIcons glamorousRefresh;
		title: 'Refresh'
	)."
	
	self tabulator
		with: [ :browser | 
			browser
				column: #master;
				column: #detail.
			browser transmit
				to: #master;
				andShow: [ :a | self composeMasterOn: a ].
			browser transmit
				from: #master;
				to: #detail;
				andShow: [ :a | self composeDetailOn: a ] ].