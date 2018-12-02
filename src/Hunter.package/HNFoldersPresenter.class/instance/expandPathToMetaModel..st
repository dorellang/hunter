as yet unclassified
expandPathToMetaModel: aMetaModel
	| pathInTree |
	"avoiding loop if there is an ongoing manual selection"
	ongoingManualSelection ifTrue: [ ^ self ].

	"we don't want to change selectedEntity... so we set this to true"
	reacting := true. 
	[
		(aMetaModel isKindOf: HNSourceMetaModel) ifFalse: [ ^ self ].
			pathInTree := treeModel deeplyDetect: [ :treeNodeModel |
				treeNodeModel item = aMetaModel program
			].
			pathInTree ifNotNil: [
				| selectedRect centerDiff overScrolled |
				tree widget expandNodePath: pathInTree.

				"hack to scroll to selection"
				
				"making target selection appear in pane"
				selectedRect := pathInTree last dependents first bounds.
				tree widget scrollToShow: selectedRect.
				
				"centering"
				centerDiff := tree widget scroller offset y + (tree widget extent y // 2) -
					pathInTree last dependents first bounds center y.
				tree widget scrollBy: 0 @ centerDiff.
				
				"correcting overscrolling"
				overScrolled := 0 max: (tree widget scroller offset y + tree widget extent y - 
					tree widget vTotalScrollRange).
				tree widget scrollBy: 0 @ overScrolled.
				
				"adjusting hscrolling"
				pathInTree last dependents first submorphs ifNotEmpty: [ :morphs |
					tree widget scrollToShow: (morphs first bounds expandBy: 20 @ 0)
				].
			]
	] ensure: [ reacting := false ].