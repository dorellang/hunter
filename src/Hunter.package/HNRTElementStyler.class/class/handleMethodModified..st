announcements
handleMethodModified: aMethodModifiedAnn
	(self isMethodAnnRelevant: aMethodModifiedAnn) ifFalse: [ ^ self ].
	self refreshStyles.