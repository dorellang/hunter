building
composeDetailOn: aPresentation
	| anAccumulator |
	anAccumulator := GLMAccumulator new.
	anAccumulator
		show: [ :a | 
			a title: [ :x | x name ].
			self composeDynamic: #gtInspectorTreeMap: on: a ].
	aPresentation custom: anAccumulator