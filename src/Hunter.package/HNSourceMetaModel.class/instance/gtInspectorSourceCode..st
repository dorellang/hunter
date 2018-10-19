inspecting
gtInspectorSourceCode: composite
	<gtInspectorPresentationOrder: -10>
	| tab styler |
	tab := composite tabulator.
	styler := PhanideRegexStyler new
		name: 'JavaScript';
		extensions: #(js);
		lexer: self class jsRegexLexerStyler;
		yourself.
	tab title: 'Source Code';
		row: #filename size: 20;
		row: #source.
	tab transmit to: #filename; andShow: [ :a |
		a label display: self filepathInProject
	].
	tab transmit to: #source; andShow: [ :a |
		a custom: (
			HNRubricHighlightedTextPresentation new
				font: StandardFonts codeFont;
				editingMode: [ :rubPresentation |
					GLMHighlighterTextRubEditingMode withStylerDecorator: (
						styler textDecoratorInPresentation: rubPresentation fileReference: nil
					)
				];
				withLineNumbers: true;
				display: [ :each | self sourceCode ]
		).
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
