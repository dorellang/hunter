api
initializeWidgets
	self title: 'Hunter - ', project commonPathPrefix.

	master := self newTabManager.
	master addTab: self programsVizTab.
	master addTab: self umlVizTab.
	master addTab: self nameCloudTab.
	
	detail := self instantiate: HNDetailPane on: [ :p |
		p project: project;
			selectedEntity: self &#selectedEntity
	]