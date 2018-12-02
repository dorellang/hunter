hooks
renderIn: aView
	| shape es |
	shape := RTLabel new
		height: [ :term |
			(term count - self minFrequency) * maxHeight / (self maxFrequency - self minFrequency max: 1) + minHeight ];
		text: #word.
	es := shape elementsOn: self sortedAssociationsBounded.
	aView addAll: es.
	es @ RTPopup.
	es @ HNHighlightable.
	layout on: es