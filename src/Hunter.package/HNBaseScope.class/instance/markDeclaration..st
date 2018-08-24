declaring
markDeclaration: declName
	declarations at: declName
		ifPresent: [ declarations at: declName put: true ]
		ifAbsent: [ Error signal: 'Trying to mark unexistant declaration!' ]