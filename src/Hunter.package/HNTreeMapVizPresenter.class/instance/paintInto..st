hooks
paintInto: builder
	| lb weightVisitor popupTextVisitor |
	selectedEntity ifNil: [ ^self ].
	
	weightVisitor := HNViz01WeightVisitor new.
	popupTextVisitor := HNViz01PopupTextVisitor new.

	builder shape
		fillColor: [ :metaModel | self colorFor: metaModel ].
	builder interaction 
		popupText: [ :metaModel | metaModel accept: popupTextVisitor ];
		addInteraction: HNHighlightable new.
	builder inset: 8.
	builder
		explore: selectedEntity program
		using: [ :metaModel | metaModel children ].
	builder
		weight: [ :metaModel | metaModel accept: weightVisitor ].

	builder extent: self widget extent "400@200".

	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: builder view.
	lb addText: 'Each circle may represent either a file, a function or a class.'.
	lb addText: 'Size is proportional to lines of code.'.
"	palette := RTColorPalette diverging colors: 10 scheme: 'RdYlGn'.
	lb addColorFadingUsing: palette reverse text: '# of variables'."
	lb build.
