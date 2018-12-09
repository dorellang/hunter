refreshing
refreshStyles
	styles := self stylesFromMethods.
	stylesBySelector := Dictionary new.
	styles do: [ :aStyle |
		stylesBySelector at: aStyle methodSelector put: aStyle.
	].
	self styleChangeAnnouncer announce: HNRTElementStyleChange new