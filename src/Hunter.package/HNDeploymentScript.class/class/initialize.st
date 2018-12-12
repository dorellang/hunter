class initialization
initialize
	IsDeployed ifNil: [ IsDeployed := false ].
	SessionManager default registerGuiClassNamed: self name.