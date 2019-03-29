events-processing
initialMessageMorph
	| font |
	font := LogicalFont familyName: StandardFonts defaultFont familyName pointSize: 18.
	^ 'Drop a directory here' asMorph 
		font: font emphasis: TextEmphasis bold value;
		color: (UITheme current textColor alpha: 0.2);
		yourself