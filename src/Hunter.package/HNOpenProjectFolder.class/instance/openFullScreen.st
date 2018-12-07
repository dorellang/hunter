opening
openFullScreen
	| project |
	project := self newProject.
	project ifNil: [ ^ self ].

	(HNProjectBrowser on: [ :b | b project: project]) openWorldWithSpec widget
		color: UIManager default theme windowColor;
		borderColor: UIManager default theme windowColor;
		borderWidth: 8.

	"Force refresh morphs after changes to widget above."
	World themeChanged.
	(SystemWindow allSubInstances select:[:e | e owner isNil]) do:#themeChanged.
	"Hack because buttons icons are not shown until you mouse over it ..."	
	PluggableButtonMorph allInstances do: #changed. 
	