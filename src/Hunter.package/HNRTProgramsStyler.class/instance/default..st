styles
default: anElement
	<defaultStyleWithEdges: true>
	| hackyColorProvider |
	self flag: #todo. "Just an easy hack"
	hackyColorProvider := Dictionary new
		at: HNExternalProgram put: [HNColorTheme externalProgramColor];
		at: HNUnknownProgram put: [ HNColorTheme unknownProgramColor ];
		at: HNUnparsedProgram put: [ self folderColorMap colorAt: anElement model folder ];
		at: HNProgram put: [ self folderColorMap colorAt: anElement model folder ];
		yourself.
	
	anElement trachelShape color: (hackyColorProvider at: anElement model class) value;
		strokePaint: Color black;
		strokeWidth: 0.5.
	self relevantEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: Color lightGray
	]