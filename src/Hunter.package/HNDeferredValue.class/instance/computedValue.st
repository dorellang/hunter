accessing - Hunter value
computedValue
	^ computedValue ifNil: [ computedValue := computationBlock value ]