building
composeDetailTabOn: aPresentation
	
	aPresentation tabulator
		with: [ :detailTabulator | 
			detailTabulator
				row: #treeMap;
				row: #sourceCode span: 2.
			
			detailTabulator transmit
				to: #treeMap;
				andShow: [ :a | self composeDynamic: #gtInspectorTreeMap: on: a ].
							
			detailTabulator transmit
				to: #sourceCode;
				andShow: [ :a :model | model gtInspectorSourceCode: a ].
			
			detailTabulator transmit 
				from: #treeMap;
				to: #sourceCode;
				andShow: [ :a :model | model gtInspectorSourceCode: a ].
		]

	
	