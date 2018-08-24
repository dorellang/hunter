private
checkIfDeclaredAndMarked: anIdentifierName
	declarations at: anIdentifierName
		ifPresent: [ :isMarked |
			isMarked ifFalse: [ Error signal: 'Trying to access before declaration in code.' ] 
		] ifAbsent: [ Error signal: 'Trying to access undeclared name in scope.' ].
