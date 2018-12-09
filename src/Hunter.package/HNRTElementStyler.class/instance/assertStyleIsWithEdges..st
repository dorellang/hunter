private
assertStyleIsWithEdges: aStyle
	self assert: aStyle isWithEdges
		description: 'Style should be with edges. ', 
			'Hint: Check the HNRTElementStylerPragmaHandler pragma handlers protocol to check ',
			'ways of creating a style with edges.'