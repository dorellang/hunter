enumerating
deeplyDetect: aBlock
	(self item isKindOf: HNProgram) ifTrue: [ (aBlock value: self) ifTrue: [^ self path ] ].
	(self item isKindOf: HNFolder) ifTrue: [
		self contents do: [ :sub |
			(sub deeplyDetect: aBlock) ifNotNil: [:found | ^ found]
		].
	].
	^ nil