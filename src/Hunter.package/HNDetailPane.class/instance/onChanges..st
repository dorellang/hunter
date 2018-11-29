refreshing
onChanges: dataChanges
	"self halt."
	dataChanges whenValueChangedAt: #selectedEntity do: [ :entity | self halt ].