accessing
nextOrder
	| order |
	order := nextOrder.
	nextOrder := nextOrder + 1. 
	^ order