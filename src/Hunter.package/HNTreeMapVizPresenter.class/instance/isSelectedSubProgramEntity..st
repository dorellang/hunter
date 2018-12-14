hooks
isSelectedSubProgramEntity: metaModel
	^ (metaModel isKindOf: HNProgram) not
		and: [ metaModel = selectedEntity ]