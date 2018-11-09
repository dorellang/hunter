building
composeDynamic: selector on: a
	^ a dynamic
		display: [ :aProjectInB | 
			GLMCompositePresentation new with: [ :dynamic | 
				aProjectInB perform: selector with: dynamic ] ];
		yourself