actions
ifDeployedThenHandleQuitSessionAndFinally: aBlock
	"This behavior replaces the original WorldState class>>quitSession when Hunter is deployed."

	self isDeployed ifFalse: [ ^self ].
	self handleQuitSession.
	aBlock value.
