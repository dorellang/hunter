initialization
initializeDownButton
	"Only instantiate it to avoid DNUs, but do not add it."

	super initializeDownButton.
	downButton extent: 0@0.