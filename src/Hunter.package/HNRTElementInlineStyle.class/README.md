I am a Hunter RTElement Style. I can configure what the RTElement looks like via the applyStyleBlock. You do not instantiate me directly in common circunstances, instead you add me indirectly in a HNRTElementStyler (which is mainly an object that holds instances of mine) with the methods HNRTElementStyler>>#defaultStyle: and HNRTElementStyler>>#addStyle:with:. Both messages receive as their last message the applyStyleBlock of the instance that would be created into the HNRTElementStyler.

My instance variables:

- name
- applyStyleBlock

The applyStyleBlock passed to me should be an one-argument block. The only argument passed to this block is the RTElement you are currently applying the styling on, so that you can send any messages required for changing its looks. We recommend changing the element trachelShape and then (after all styles were applied) call #signalUpdate, for the view or canvas.

Example of indirect use with HRTElementStyler:

NRTElementStyler new
		defaultStyle: [ :e |
			e trachelShape color: Color blue;
				strokePaint: Color black;
				strokeWidth: 0.5
		].

Note how in that snippet we send #trachelShape to the object, and that you still have to call #signalUpdate to the RTView or TRCanvas in order to see those changes.