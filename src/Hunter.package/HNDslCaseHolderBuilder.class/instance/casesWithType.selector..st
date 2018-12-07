accessing
casesWithType: type selector: selector
	^ casesDict at: (self keyForType: type selector: selector) ifAbsent: [ {} ]