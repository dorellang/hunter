private
refreshElement: aRTElement

	self conditionsAndColorsDo: [ :aBlock :aColor |
		(aBlock value: aRTElement)   
			ifTrue: [
				self rememberOriginalColorFor: aRTElement.
				self highlight: aRTElement color: aColor.
				^self
			]
			ifFalse: [ self restoreOriginalColorFor: aRTElement ]
	]