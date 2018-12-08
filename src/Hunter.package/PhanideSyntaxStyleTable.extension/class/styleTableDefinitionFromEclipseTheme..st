*Hunter
styleTableDefinitionFromEclipseTheme: nameAndColorArray
	"See my sender."

	| nameAndColorDictionary |
		nameAndColorDictionary := nameAndColorArray 
				inject: Dictionary new 
				into: [ :dictionary :each |
					dictionary
						at: each first put: each second;
						yourself ].

	^ Array streamContents: [ :stream |
		stream nextPutAll: nameAndColorArray.

		stream
			nextPut: { #type. nameAndColorDictionary at: #keyword };
			nextPut: { #preprocessor. nameAndColorDictionary at: #annotation };
			nextPut: { #module. nameAndColorDictionary at: #interface };
			nextPut: { #struct. nameAndColorDictionary at: #class };
			nextPut: { #patternDontCare. nameAndColorDictionary at: #foreground };

			nextPut: { #identifier. nameAndColorDictionary at: #writeOccurrenceIndication };
			nextPut: { #symbol. nameAndColorDictionary at: #constant };
			nextPut: { #callBracket. nameAndColorDictionary at: #bracket };
			nextPut: { #methodBracket. nameAndColorDictionary at: #bracket };
			nextPut: { #methodHeaderSelector. nameAndColorDictionary at: #methodDeclaration. #bold };
			nextPut: { #localDefinition. nameAndColorDictionary at: #constant };
			nextPut: { #bar. nameAndColorDictionary at: #methodDeclaration }.
		
		 ]
