events-processing
initialMessageMorph
	| font |
	font := LogicalFont familyName: StandardFonts defaultFont familyName pointSize: 18.
	^ (StringMorph contents: 'Drop a directory here' font: font emphasis: TextEmphasis bold)
		color: UIManager default theme windowColor darker;
		yourself