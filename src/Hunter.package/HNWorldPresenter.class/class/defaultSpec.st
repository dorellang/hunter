specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :aColumn | 
			aColumn
				add: #mainMenu height: self toolbarHeight;
				add: #contents ];
		yourself