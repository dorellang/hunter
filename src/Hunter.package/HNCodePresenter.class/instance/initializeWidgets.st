initialization
initializeWidgets
	| styler morph |
	styler := PhanideRegexStyler new
		name: 'JavaScript';
		extensions: #(js);
		lexer: HNSourceMetaModel jsRegexLexerStyler;
		yourself.
		
	textModel := RubScrolledTextModel new.
	
	morph := (HNCodeMorph on: textModel) 
		getSelectionSelector: #primarySelectionInterval;
		beReadOnly;
		withLineNumbers;
		font: StandardFonts codeFont;
		editingMode:
			(GLMHighlighterTextRubEditingMode
				withStylerDecorator: (styler textDecoratorInPresentation: nil fileReference: nil));
		yourself.

	morph textArea
		on: PharoShortcuts current findShortcut
		do: [:x | "nothing, we don't need a search within a floating editor widget"].
		
	textSpecAdapter := morph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		asSpecAdapter