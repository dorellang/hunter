helpers
failingPredicates
	^  { [ false ]. [ :node | node odd ]. [ :node :ctx | node - ctx >= 10 ] }.