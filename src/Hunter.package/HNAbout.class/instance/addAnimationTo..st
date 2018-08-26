instance creation
addAnimationTo: v
	| e |
	v when: TRMouseClick do: [ :event | v clean ].
	v
		when: TRMouseMove
		do: [ :event | 
			e := (RTBox new
				color: (Color red alpha: 0.2);
				size: 20 atRandom + 5) element.
			e translateTo: event position.
			v add: e.
			v
				addAnimation:
					(RTAccelerationMove
						to: event position + ((150 atRandom - 75) @ (150 atRandom - 75))
						during: 5
						on: e) ]