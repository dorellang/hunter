accessing
styleChangeAnnouncer
	styleChangeAnnouncer ifNil: [ styleChangeAnnouncer := Announcer new ].
	^ styleChangeAnnouncer