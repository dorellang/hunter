building
composeDynamic: selector on: a
	^ a dynamic
		display: [ :selectedObject | 
			GLMCompositePresentation new with: [ :dynamic | 
				selectedObject perform: selector with: dynamic ] ];
		yourself