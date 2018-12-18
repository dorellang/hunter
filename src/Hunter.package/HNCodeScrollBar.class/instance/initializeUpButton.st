initialization
initializeUpButton
	"Only instantiate it to avoid DNUs, but do not add it."

	super initializeUpButton.
	upButton extent: 0@0.