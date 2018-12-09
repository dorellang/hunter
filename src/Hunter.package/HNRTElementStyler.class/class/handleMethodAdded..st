announcements
handleMethodAdded: aMethodAddedAnn
	(self isMethodAnnRelevant: aMethodAddedAnn) ifFalse: [ ^ self ].
	self refreshStyles.