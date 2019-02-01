*Hunter
removeAllSegments
	"Remove all segments"

	"Each segment's #delete removes itself from the collection, that's the reason of this weird loop."
	[ self segments isEmpty ] whileFalse: [ self segments anyOne delete ]