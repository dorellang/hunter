initialization
getRelevantElementsFor: string
	^ view elements
		select: [ :e | self isElement: e relevantFor: string ]