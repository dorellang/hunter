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
		| code segmentBegin segmentEnd segment |
		segmentBegin := self definitionNode range first + 1.
		segmentEnd := self definitionNode range second + 1.
		segment := 
			(RubPlainSegmentMorph from: segmentBegin to: segmentEnd)
				color: (Color lightGreen alpha: 0.3);
				setBalloonText: (self accept: HNViz01PopupTextVisitor new);
				yourself.

		code := 
			HNRubricHighlightedTextPresentation new
				font: StandardFonts codeFont;
				editingMode: [ :rubPresentation |
					GLMHighlighterTextRubEditingMode withStylerDecorator: (
						styler textDecoratorInPresentation: rubPresentation fileReference: nil
					)
				];
				withLineNumbers: true;
				display: [ :each | self program sourceFileContents ];
				scrollAtIndex: segmentEnd;
				scrollAtIndex: segmentBegin;
				addTextSegment: segment;
				yourself.

		a custom: code.
	]