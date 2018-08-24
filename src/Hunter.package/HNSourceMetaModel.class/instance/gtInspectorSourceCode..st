inspecting
gtInspectorSourceCode: composite
	<gtInspectorPresentationOrder: 20>
	| tab |
	tab := composite tabulator.
	tab title: 'Source Code';
		row: #filename size: 20;
		row: #source.
	tab transmit to: #filename; andShow: [ :a |
		a label display: self filepathInProject
	].
	tab transmit to: #source; andShow: [ :a |
		a text
			withLineNumbers: true;
			display: [ :each | self sourceCode ]
	].
	"
	composite custom: (
		GLMRubricHighlightedTextPresentation new
			title: 'Source Code';
			withLineNumbers: true;
			editingMode: [ 
				GLMHighlighterTextRubEditingMode new
			];
			font: StandardFonts codeFont;
			display: [ :each | self sourceCode ]
	)"
