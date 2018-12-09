class initialization
ensureInitialization
	| uninitialized |
	uninitialized := { styles. stylesBySelector. styleChangeAnnouncer } anySatisfy: #isNil.
	uninitialized ifTrue: [ self initialize ]