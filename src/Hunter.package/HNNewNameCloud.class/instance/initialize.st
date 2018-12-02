initialization
initialize
	super initialize.
	terms := HNNameCloudTermCollection new.
	maxHeight := self defaultMaxHeight.
	minHeight := self defaultMinHeight.
	maxWords := self defaultMaxWords.
	layout := self defaultLayout.