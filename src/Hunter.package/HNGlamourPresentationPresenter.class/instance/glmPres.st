accessing
glmPres
	glmPres ifNil: [  glmPres := presentationBuilderBlock value ].
	^ glmPres