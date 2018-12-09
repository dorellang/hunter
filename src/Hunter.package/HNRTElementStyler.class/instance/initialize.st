initialization
initialize
	inlineStyles := OrderedCollection new.
	self class styleChangeAnnouncer weak
		when: HNRTElementStyleChange send: #refreshStyles to: self