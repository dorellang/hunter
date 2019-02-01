hooks
paintInto: builder
	| lb weightVisitor popupTextVisitor |
	selectedEntity ifNil: [ ^self ].
	
	weightVisitor := HNWeightVisitor new.
	popupTextVisitor := HNPopupTextVisitor new.

	builder shape
		fillColor: [ :metaModel | self colorFor: metaModel ].
	builder interaction 
		popupText: [ :metaModel | metaModel accept: popupTextVisitor ];
		addInteraction: HNHighlightable new.
	builder
		inset: 10;
		from: selectedEntity program children
			using: [ :metaModel | metaModel children ];
		weight: [ :metaModel | metaModel accept: weightVisitor ].

	"Select the container program when clicking on the background"
	builder view when: TRMouseClick do: [ :event | 
		selectedEntity := selectedEntity program.
		self refresher refreshIfRequested ].
	
		"Hack to optimize space."
	builder extent: self widget extent + (40@0).

	lb := HNLegendBuilder new.
	lb onDemand: 'Help'.
	lb view: builder view.
	lb addText: 'Each box may represent either a function or a class.'.
	lb addText: 'Size is proportional to lines of code.'.
"	palette := RTColorPalette diverging colors: 10 scheme: 'RdYlGn'.
	lb addColorFadingUsing: palette reverse text: '# of variables'."
	lb build.
