building
compose
	self title: [ :projectInB | 'Hunter - ' , projectInB project commonPathPrefix ].
	self tabulator
		with: [ :rootTabulator | 
			rootTabulator
				column: #master;
				column: #detail.
			
			rootTabulator transmit
				to: #master;
				andShow: [ :a | self composeMasterOn: a ].
			
			rootTabulator transmit
				from: #master port: #selectedProgram;
				to: #detail;
				andShowIfNone: [ :a | self composeDetailOn: a ] ]