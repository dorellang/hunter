building
composeMasterOn: aPresentation
	| stacker |
	stacker := GLMStacker new.
	stacker
		aPane: #programs;
		aPane: #uml.

	stacker transmit
		to: #programs;
		andShow: [ :a | 
			a title: 'Programs'.
			self composeProgramsTabOn: a ].

	stacker transmit
		to: #uml;
		andShow: [ :a | 
			a title: 'UML'.
			self composeUMLTabOn: a ].

	stacker transmit
		from: #programs port: #selectedProgram;
		toOutsidePort: #selectedProgram.

	stacker transmit
		from: #uml;
		toOutsidePort: #selectedProgram.

	aPresentation custom: stacker