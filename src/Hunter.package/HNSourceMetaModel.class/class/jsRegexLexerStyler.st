accessing
jsRegexLexerStyler
	^ Styler ifNil: [ Styler := PhanideRegexLexerStyler parse: self jsRegexLexerStylerDefinition ]