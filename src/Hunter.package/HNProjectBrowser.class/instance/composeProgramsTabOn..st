building
composeProgramsTabOn: aPresentation

	| searchTextMorph |
	searchTextMorph := self searchTextMorph.

	aPresentation tabulator with: [ :tabulator |
		tabulator 
			row: #programs;
			row: #search size: searchTextMorph height.

		"Search widget"
		tabulator transmit
			to: #search;
			andShow: [ :a | a morph display: [ searchTextMorph ] ].
				
		"Viz widget"
		tabulator transmit 
			to: #programs; 
			andShow: [ :a |
				(self composeDynamic: #gtInspectorProgramsIn: on: a)
					updateOn: HNProjectInTheBrowserUpdated from: [ :model | model announcer ]
			].
		
		tabulator transmit from: #programs; toOutsidePort: #selectedProgram
	]