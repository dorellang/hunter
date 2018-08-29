accessing
astCollection
	^ parseResultCollection select: [ :r | r status = 'ok' ] thenCollect: #result