accessing
keyForType: type selector: selector
	^ (type ifNil: [ #'$' ]), #':', (selector ifNil: [ #'$' ])