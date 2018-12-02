initialization
initializeWidgets
	| styler morph |
	styler := PhanideRegexStyler new
		name: 'JavaScript';
		extensions: #(js);
		lexer: HNSourceMetaModel jsRegexLexerStyler;
		yourself.
		
	textModel := RubScrolledTextModel new.
	
	morph := textModel newScrolledText
		beReadOnly;
		withLineNumbers;
		font: StandardFonts codeFont;
		editingMode:
			(GLMHighlighterTextRubEditingMode
				withStylerDecorator: (styler textDecoratorInPresentation: nil fileReference: nil));
		yourself.
		
	text := morph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		asSpecAdapter