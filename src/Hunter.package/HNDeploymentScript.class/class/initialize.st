class initialization
initialize
	Save := false.
	IsDeployed ifNil: [ IsDeployed := false ].
	SessionManager default registerGuiClassNamed: self name.