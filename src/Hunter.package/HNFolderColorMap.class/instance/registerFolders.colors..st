private
registerFolders: someFolders colors: colors
	someFolders withIndexDo: [ :aFolder :index | 
		| color subFolders subFoldersColors nextColorIndex |
		color := colors at: index.
		colorByFolderMap at: aFolder put: color.
		nextColorIndex := index < someFolders size
			ifTrue: [ index + 1 ]
			ifFalse: [ 1 ].
		subFolders := aFolder subFoldersSortedByBasename.
		subFoldersColors := self
			colorsForSubFolderCount: subFolders size
			from: color
			to: (colors at: nextColorIndex).
		self 
			registerFolders: subFolders
			colors: subFoldersColors ]