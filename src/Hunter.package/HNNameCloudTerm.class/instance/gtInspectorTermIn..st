inspecting
gtInspectorTermIn: composite
	<gtInspectorPresentationOrder: -10>
	| tab |
	tab := composite tabulator.
	tab title: 'Term';
		row: #title size: 20;
		row: #items.
	tab transmit to: #title; andShow: [ :a |
		a label display: ('Term: "{1}" Occurrences in JS Identifiers: {2}' format: {word. count})
	].
	tab transmit to: #items; andShow: [ :a |
		a fastList
			title: 'Related entities';
			display: [ :x | x metaModels ];
			showOnly: 50;
			format: [ :aMetaModel | aMetaModel vizDescription asStringMorph ]
	].
	tab transmit from: #items; toOutsidePort: #selection