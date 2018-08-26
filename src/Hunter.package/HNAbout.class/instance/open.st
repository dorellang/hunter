instance creation
open
	| v labels |
	v := RTView new.
"	v add: (RTBitmap new form: TRPlatform current roassalIcon) element."
	labels := RTLabel
		elementsOn:
			#(
				'Hunter is a JavaScript reengineering'
				'platform for Pharo.'
				'Its main purpose is to help'
			    'programmers to understand'
			    'JavaScript Programs' ).
	labels
		add:
			((RTLabel new color: Color veryVeryDarkGray)
				elementOn: 'https://github.com/dorellang/hunter').

	v addAll: labels.
	RTVerticalLineLayout on: labels.
"	TRConstraint move: v elements first onTheLeftOf: labels."

	"Adding animation"
	self addAnimationTo: v.
	v openTitled: 'Hunter Useful and Nice Tool for ECMAScript Reengineering'