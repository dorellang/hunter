adding
addOccurrence: aNameCloudOccurrence
	"assuming aNameCloudTerm word is already normalized (i.e. letter only and lowercase)"
	| normalized |
	normalized := aNameCloudOccurrence normalized.
	(self isValidOccurrence: normalized) ifFalse: [ ^ self ].
	termsByWord at: normalized word ifAbsentPut: [ HNNameCloudTerm word: normalized word ].
	(termsByWord at: normalized word) addOccurrence: aNameCloudOccurrence