visualization
visualizeUML
	| b lb |
	b := RTUMLClassBuilder new.
	b instanceVariables: #variables.
	b methodselector: #name.
	b methodsNames: #instanceMethods.
	b interaction addInteraction: HNHighlightable new.
"	b attributeselector: #variables."
"	b lineShape arrowedLine."
	b addObjects: self classes.
	b layout tree; ifNotConnectedThen: RTGridLayout new.
	b view @ RTZoomableView.
	lb := RTLegendBuilder new.
	lb onDemand: '+ Info'.
	lb view: b view.
	lb addText: 'This is an UML class diagram with every ES6 class in the project.'.
	lb build.
	^ b