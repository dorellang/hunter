stack
popFrame
	| poppedFrame |
	poppedFrame := currentFrame.
	currentFrame := poppedFrame parent.
	^ poppedFrame