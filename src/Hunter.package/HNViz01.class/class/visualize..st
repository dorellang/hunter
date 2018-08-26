visualizations
visualize: aProject
	| b lb weightVisitor colorVisitor popupTextVisitor palette |
	weightVisitor := HNViz01WeightVisitor new.
	colorVisitor := HNViz01ColorVisitor new.
	popupTextVisitor := HNViz01PopupTextVisitor new.
	b := RTCircularTreeMapBuilder new.
	b shape color: [:metaModel | metaModel accept: colorVisitor ].
	b baseradius: 200; weight: [ :metaModel | metaModel accept: weightVisitor ].
	b interaction popupText: [:metaModel | metaModel accept: popupTextVisitor ].
	b explore: aProject using: [ :metaModel | metaModel children ].
	lb := RTLegendBuilder new.
	lb onDemand: '+ Info'.
	lb view: b view.
	lb addText: 'Each circle may represent either a file, a function or a class.'.
	lb addText: 'Size is proportional to lines of code.'.
	palette := RTColorPalette diverging colors: 10 scheme: 'RdYlGn'.
	lb addColorFadingUsing: palette reverse text: '# of variables'.
	lb build.
	b build.
	^ b