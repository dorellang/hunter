public
ifValueAt: selector equals: value
	self if: [ :n | (n perform: selector) = value ]