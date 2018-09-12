instance creation
on: aBlock
	| p accepter rejecter |
	p := self new.
	accepter := [ :value | p resolveWith: value ].
	rejecter := [ :error | p rejectWith: error ].
	aBlock cull: accepter cull: rejecter.
	^ p