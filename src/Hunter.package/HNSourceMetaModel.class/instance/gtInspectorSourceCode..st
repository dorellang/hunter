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
		| charRange |
		charRange := self definitionNode range.
		a custom: (
			HNRubricHighlightedTextPresentation new
				font: StandardFonts codeFont;
				editingMode: [ :rubPresentation |
					GLMHighlighterTextRubEditingMode withStylerDecorator: (
						styler textDecoratorInPresentation: rubPresentation fileReference: nil
					)
				];
				withLineNumbers: true;
				display: [ :each | self program sourceFileContents ];
				selectionInterval: (charRange first + 1 to: charRange second + 1)
		).
	]