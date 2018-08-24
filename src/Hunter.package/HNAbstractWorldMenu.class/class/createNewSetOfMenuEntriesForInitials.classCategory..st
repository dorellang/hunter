public
createNewSetOfMenuEntriesForInitials: initialLetters classCategory: aCategory
	"
	Allow to create the World menu entry for a given project
	
	self new createNewSetOfMenuEntriesForInitials: 'CA' classCategory: 'DataStudio-WorldMenu'
	"
	
	| superclassName |
	self assert: [ initialLetters isString ].
	superclassName := (initialLetters, 'AbstractWorldMenu') asSymbol.
	Object subclass: superclassName instanceVariableNames: ''
		classVariableNames: '' category: aCategory.
		
	superclassName subclass: (initialLetters, 'About') asSymbol instanceVariableNames: ''
		classVariableNames: '' category: aCategory.
	
	superclassName subclass: (initialLetters, 'ChatWithUs') asSymbol instanceVariableNames: ''
		classVariableNames: '' category: aCategory.

	superclassName subclass: (initialLetters, 'HowToReportABug') asSymbol instanceVariableNames: ''
		classVariableNames: '' category: aCategory.