public
buildSchema: aView
	"this is the same as the super class but it also sets interactions for method labels"
	| group box r label e1 e2  l h attributes methods line headerline midline clh |
	
	classes do: [ :object | 
		group := RTGroup new.
		group add: (self classNameShape elementOn: object).
		clh := group encompassingRectangle height.
			
		label := self attributeShape shape.
		(attributes := self attributesOf: object) do: [ :attribute |
			| lab |
			lab := label elementOn: attribute.
			(lab notNil and: [ lab trachelShape text trimmed notEmpty ])
				ifTrue: [ group add: lab ] ].
		RTVerticalLineLayout new gapSize: 0; on: group.
		r := group encompassingRectangle.
		h := r height.
		
		label := self methodShape shape.
		(methods := self methodsForClass: object) do: [ :method | 
			| lab | 
			lab := label elementOn: method.
			">>>> here we add the method interaction"
			lab @ (RTHighlightable new color: Color red).
			">>>> method interaction adding end"
			lab notNil
				ifTrue: [ group add: lab ] ].
	
		RTVerticalLineLayout new gapSize: 0; on: group.
		r := group encompassingRectangle.
		group first trachelShape 
			translateTo: (r center x @ group first trachelShape center y).
		box := self boxShape elementOn: object.
		
		line := [ :p1 :p2 |
			e1 := (RTBox new size: 0) elementOn: p1.
			e2 := (RTBox new size: 0) elementOn: p2.
			e1 trachelShape translateTo: p1.
			e2 trachelShape translateTo: p2.
			l := RTEdge on: object from: e1 to: e2.
			l + (RTLine new color: box trachelShape strokePaint).
			group add: e1; add: e2; add: l. ].
		headerline := [ line value: (r left@ clh) value: (r right@ clh)  ].
		midline := [ line value: (r left@h) value: (r right@h)  ].
		attributes isEmpty 
			ifTrue: [ 
				methods isEmpty ifTrue: [  ]
					ifFalse: [ headerline value. ] ]
			ifFalse: [  
				headerline value.
				methods isEmpty ifTrue: [  ]
					ifFalse: [ midline value ]  ].
		
		RTNest new on: box nest: group.
	
		self interaction setUpElement: box.
		classesGroup add: box.
		aView add: box.
		aView addAll: group.
	].