api
initializeWidgets
	self title: 'Hunter - ', project commonPathPrefix.

"	master := self newTabManager.
	master addTab: self programsTab.
	master addTab: self umlVizTab.
	master addTab: self nameCloudTab."

	master := self instantiate: HNProgramsPresenter on: [ :v |
		v 
			project: project; 
			selectedEntity: self &#selectedEntity.
	].
	
	detail := self instantiate: HNDetailPane on: [ :p |
		p project: project;
			selectedEntity: self &#selectedEntity
	]