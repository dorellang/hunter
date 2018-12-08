class initialization
initialize
	self refreshStyles.
	SystemAnnouncer uniqueInstance unsubscribe: self.
	SystemAnnouncer uniqueInstance when: MethodAdded send: #handleMethodAdded: to: self.
	SystemAnnouncer uniqueInstance when: MethodModified send: #handleMethodModified: to: self.
	SystemAnnouncer uniqueInstance when: MethodRemoved send: #handleMethodRemoved: to: self