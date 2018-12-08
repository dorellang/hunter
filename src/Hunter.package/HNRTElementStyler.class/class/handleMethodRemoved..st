announcements
handleMethodRemoved: aMethodRemovedAnn
	(self isMethodAnnRelevant: aMethodRemovedAnn) ifFalse: [ ^ self ].
	self refreshStyles.