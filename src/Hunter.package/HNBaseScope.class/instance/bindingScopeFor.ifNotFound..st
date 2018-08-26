binding
bindingScopeFor: aNameString ifNotFound: notFoundBlock
	^ declarations at: aNameString
		ifPresent: [ self ]
		ifAbsent: [ self fallbackBindingScopeFor: aNameString ifNotFound: notFoundBlock ]