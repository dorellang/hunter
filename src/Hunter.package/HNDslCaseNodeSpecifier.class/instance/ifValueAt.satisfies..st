public
ifValueAt: selector satisfies: aBlock
	self if: [ :n | aBlock value: (n perform: selector) ]