helpers
passingPredicates
	^ { [ true ]. [ :node | node even ]. [ :node :ctx | node - ctx < 10 ] }